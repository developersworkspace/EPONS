using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class UpdateResult
    {

        public enum ResultType
        {
            Success,
            Fail,
            DataChanged
        }

        public bool Success { get; private set; }
        public string Message { get;  set; }
        public ResultType Type { get; set; }

        public UpdateResult(bool success)
        {
            Success = success;
        }

        public UpdateResult(string format, params object[] arguments)
        {
            Success = string.IsNullOrWhiteSpace(format);
            if (format != null)
                Message = string.Format(format, arguments);
        }

        public UpdateResult(ResultType type)
        {
            switch (type)
            {
                case ResultType.Success:
                    Success = true;
                    break;
                case ResultType.Fail:
                    Success = false;
                    Message = "Failure";
                    break;
                case ResultType.DataChanged:
                    Success = false;
                    Message = "Data aged, save not executed";
                    break;
            }
        }

    }
}
