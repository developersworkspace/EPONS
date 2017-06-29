using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Deployment.WindowsInstaller;

namespace SADFM.Install.CustomActions
{
    public class CustomActions
    {
        [CustomAction]
        public static ActionResult VerifyPasswords(Session session)
        {
            session.Log("Begin VerifyPasswords");

            string password = session["SADFM_PASSWORD"];
            string confirmPassword = session["SADFM_CONFIRM_PASSWORD"];

            session["SADFM_PASSWORD_MATCH"] = password == confirmPassword ? "1" : "0";

            string action = password == confirmPassword ? "VerifyReadyDlg" : "PasswordNoMatchDlg";
            session.Log("Going to : {0}", action);
            session.DoAction(action);

            return ActionResult.Success;
        }
    }
}
