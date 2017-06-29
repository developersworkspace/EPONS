using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.EntityAccess
{
    public class Client : EntityAccessBase
    {
        internal Client(ConnectionStringSettings connection)
            : base(connection) { }

        public Models.Client GetById(Guid clientId)
        {
            return Execute(context =>
            {
                var provider = context.Providers.SingleOrDefault(p => p.ProviderId == clientId);
                if (provider != null)
                    return new Models.Client(provider.ProviderId, provider.LastUpdateTimestamp.Ticks) { Name = provider.Name, Type = "Provider" };
                Data.ListItem funder = context.ListItems.Single(li => li.ListItemId == clientId);
                return new Models.Client(funder.ListItemId, funder.LastUpdateTimestamp.Ticks) { Name = funder.Name, Type = "Funder" };
            });
        }

        public List<Guid> GetScalesOfProvider(Guid clientId)
        {
            return Execute(context =>
            {
                var provider = context.Providers.SingleOrDefault(p => p.ProviderId == clientId);
                if (provider == null)
                    return new List<Guid>();

                return provider.ProviderServiceTypes.SelectMany(x => x.ProviderServiceTypeScales.Select(y => y.ScaleId)).ToList();
            });
        }

        public List<Models.FunderScheme> GetFunderSchemes()
        {
            return Execute(context =>
            {
                return context.FunderSchemes.Select(x => new Models.FunderScheme()
                {
                    FunderName = x.Funder.Name,
                    MedicalScheme = x.Scheme.Name,
                    MedicalSchemeId = x.FunderSchemeId
                }).ToList(); 
            });
        }

        public bool SaveMedicalSchemeLinks(Guid FunderId, List<Guid> MedicalSchemes)
        {
            return Execute(context =>
            {

                var currentLinks = context.FunderSchemes.Where(x => x.FunderId == FunderId);

                foreach(var l in currentLinks.Select(x => x.SchemeId)) {
                    if (!MedicalSchemes.Contains(l)) {
                        context.FunderSchemes.Remove(currentLinks.Single(x => x.SchemeId == l));
                    }
                }

                foreach (var l in currentLinks.Select(x => x.SchemeId))
                {
                    if (MedicalSchemes.Contains(l))
                    {
                        MedicalSchemes.Remove(l);
                    }
                }

                foreach (Guid MedicalScheme in MedicalSchemes) {

                    var temp = context.FunderSchemes.FirstOrDefault(x => x.SchemeId == MedicalScheme);

                    if (temp != null)
                    {
                        temp.FunderId = FunderId;
                    }
                    else
                    {
                        context.FunderSchemes.Add(new FunderScheme()
                        {
                            FunderId = FunderId,
                            SchemeId = MedicalScheme
                        });

                    }
                }

                context.SaveChanges();

                return true;
            });

        }

        public List<Models.FunderScheme> GetMedicalSchemes(Guid? FunderId = null)
        {
            return Execute(context =>
            {

                return context.ListItems.Where(x => x.Parent.Name.Equals("MedicalScheme")).Select(x => new Models.FunderScheme()
                {
                    FunderName = context.FunderSchemes.FirstOrDefault(y => y.SchemeId == x.ListItemId) != null ? context.FunderSchemes.FirstOrDefault(y => y.SchemeId == x.ListItemId).Funder.Name : "",
                    MedicalScheme = x.Description,
                    MedicalSchemeId = x.ListItemId,
                    FunderId = context.FunderSchemes.FirstOrDefault(y => y.SchemeId == x.ListItemId) != null ? context.FunderSchemes.FirstOrDefault(y => y.SchemeId == x.ListItemId).Funder.ListItemId : Guid.NewGuid()
                }).ToList().OrderByDescending(x => x.FunderId == (FunderId.HasValue? FunderId.Value : (Guid?)null)).ThenByDescending(x => !string.IsNullOrWhiteSpace(x.FunderName)).ThenBy(x => x.MedicalScheme).ToList();
            });

        }

        public List<Models.Client> GetClients()
        {
            return Execute(context =>
            {
                return context.Providers
                    .Where(p => !p.IsGroup).ToList()
                    .Select(p => new Models.Client(p.ProviderId, p.LastUpdateTimestamp.Ticks) { Name = p.Name, Type = "Provider" })
                    .Union(DataAccess.ListItem.GetList("Funders").Select(li => new Models.Client(li.GUID, li.LastUpdateTimestamp.Ticks) { Name = li.Name, Type = "Funder" }))
                    .ToList();
            });
        }

    }
}
