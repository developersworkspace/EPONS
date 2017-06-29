using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class PatientSearch
    {
        public string PatientFilter { get; private set; }
        public string FirstName { get; private set; }
        public string LastName { get; private set; }
        public DateTime? BirthDate { get; private set; }
        public string Gender { get; private set; }
        public string Race { get; private set; }
        public string Providers { get; private set; }
        public string MedicalScheme { get; private set; }

        public PatientSearch(System.Collections.Specialized.NameValueCollection form)
        {
            PatientFilter = form["PatientFilter"];

            FirstName = form["FirstName"];
            LastName = form["LastName"];
            DateTime tmp;
            if (DateTime.TryParse(form["BirthDate"], out tmp))
                BirthDate = tmp;
            Gender = form["Gender"];
            Race = form["Race"];
            Providers = form["Providers"];
            MedicalScheme = form["MedicalScheme"];

            if (!string.IsNullOrWhiteSpace(PatientFilter))
                PatientFilter = PatientFilter.ToLower();
            if (!string.IsNullOrWhiteSpace(FirstName))
                FirstName = FirstName.ToLower();
            if (!string.IsNullOrWhiteSpace(LastName))
                LastName = LastName.ToLower();
            if (!string.IsNullOrWhiteSpace(Gender))
                Gender = Gender.ToLower();
            if (!string.IsNullOrWhiteSpace(Race))
                Race = Race.ToLower();
            if (!string.IsNullOrWhiteSpace(Providers))
                Providers = Providers.ToLower();
            if (!string.IsNullOrWhiteSpace(MedicalScheme))
                MedicalScheme = MedicalScheme.ToLower();


        }

    }
}
