using NUnit.Framework;
using System;
using TechTalk.SpecFlow;
using Speccing.TestPlatform.Web;

namespace SADFM.Web.Speccing.Steps
{
    [Binding]
    public class NavigationSteps : WebBrowserTestSteps
    {
        [Given(@"I open a new browser session in all browsers")]
        public void GivenIOpenANewBrowserSessionInAllBrowsers()
        {
            string[] browsers = new string[] { "chrome" };//, "firefox" };
            for (int i = 0; i < browsers.Length; i++)
                try
                {
                    Drivers.Add(browsers[i]);
                }
                catch (Exception ex)
                {
                    Assert.Fail("Could not instantiate {0}: ", browsers[i], ex.Message);
                }
        }

        [Given(@"I am an unauthenticated user")]
        public void GivenIAmAnUnauthenticatedUser()
        {
            try
            {
                string url = Configuration.Logout.ToString();
                Console.WriteLine("Browsing to {0}", url);
                Drivers.Goto(url);
            }
            catch (Exception ex)
            {
                Assert.Fail("Could not browse to /Account/Logout: {0}", ex.Message);
            }
        }

        [When(@"I browse to ""(.*)""")]
        public void WhenIBrowseTo(string url)
        {
            try
            {
                Drivers.Goto(Configuration.Url(url));
            }
            catch (Exception ex)
            {
                Assert.Fail("Could not browse to {0}: {1}", url, ex.Message);
            }
        }

        [Then(@"I should be redirected to ""(.*)""")]
        public void ThenIShouldBeRedirectedTo(string url)
        {
            try
            {
                Drivers.ConfirmLocation(Configuration.Url(url));
            }
            catch (Exception ex)
            {
                Assert.Fail("Could not verify that the location is correct at {0}: {1}", url, ex.Message);
            }
        }

    }
}
