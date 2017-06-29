using SADFM.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;

namespace SADFM.Web.Shared
{
    public class Library
    {

        private static Dictionary<string, Dictionary<string, string>> languages { get; set; }
        private static Dictionary<Guid, string> ScorerExplaination { get; set; }
        private static Dictionary<Guid, string> FunderExplaination { get; set; }

        static Library()
        {
            languages = DataAccess.ListItem.GetLabels();

            lock (languages)
            {
                // Set standard labels
                string previousLanguage = null,
                    previousKey = null;
                for (; ; )
                {
                    foreach (var language in languages.Keys.ToList())
                    {
                        foreach (var key in languages[language].Keys.ToList())
                        {
                            Match mx = Regex.Match(languages[language][key], @"\{[A-Za-z0-9]*\}");
                            if (mx.Success)
                            {
                                if (previousLanguage == language && previousKey == key)
                                    throw new ApplicationException(string.Format("Cannot resolve label key {0} in language {1}", key, language));
                                previousLanguage = language;
                                previousKey = key;
                                languages[language][key] = mx.Result(languages[language][mx.Value.Substring(1, mx.Value.Length - 2)]);
                                continue;
                            }
                        }
                    }
                    break;
                }

                // Set score value hover text descriptions
                ScorerExplaination = new Dictionary<Guid, string>();
                FunderExplaination = new Dictionary<Guid, string>();
                DataAccess.ListItem.GetScaleLabels().ForEach(sl =>
                {
                    if (!string.IsNullOrWhiteSpace(sl.ProviderExplaination))
                        ScorerExplaination.Add(sl.ScaleValueId, sl.ProviderExplaination);
                    if (!string.IsNullOrWhiteSpace(sl.FunderExplaination))
                        FunderExplaination.Add(sl.ScaleValueId, sl.FunderExplaination);
                });
            }
        }

        public static MvcHtmlString GetText(Guid listItemId)
        {
            return GetText(DataAccess.ListItem.GetById(listItemId).Name);
        }
        public static MvcHtmlString GetText(string key)
        {
            try
            {
                return new MvcHtmlString(languages[UserHelper.GetUserLanguage()][key]);
            }
            catch
            {
                return new MvcHtmlString(string.Format("[#{0}]", key));
            }
        }
        public static MvcHtmlString GetScoreDefinition(Guid scoreId, bool scoring)
        {
            if (!FunderExplaination.ContainsKey(scoreId))
                return new MvcHtmlString(string.Empty);
            string result = FunderExplaination[scoreId];
            if (ScorerExplaination.ContainsKey(scoreId))
                result = string.Format("{0}<br>{1}", result, ScorerExplaination[scoreId]);
            return new MvcHtmlString(result.Replace("\"",""));
        }
    }
}