using NLog;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace SADFM.Base
{
    public static class NLogHelper
    {

        private static Logger LoggerInstance { get; set; }

        static NLogHelper()
        {
            if (LoggerInstance == null)
            {
                if (ConfigurationManager.AppSettings["DebugRecording"] == "true")
                {
                    LogManager.ReconfigExistingLoggers();

                    LoggerInstance = LogManager.GetCurrentClassLogger();
                }
            }
        }

        public static void WriteEvent(LogLevel level, string message, params object[] args)
        {
            if (LoggerInstance == null)
                return;
            LoggerInstance.Log(level, message, args);
        }

       
    }
}