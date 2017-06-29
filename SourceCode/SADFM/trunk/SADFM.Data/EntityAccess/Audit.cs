using ReturnTrue.Utilities.Cryptography;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;


namespace SADFM.Data.EntityAccess
{
    public class Audit : EntityAccessBase
    {
        internal Audit(ConnectionStringSettings connection)
            : base(connection)
        { }

        public List<Models.Audit> GetAllAudits(DateTime? StartDate, DateTime? EndDate, int StartIndex, int Length, string Search, int ColumnSort, string Direction, out int count, out int filtered)
        {

            int c = 0;
            int f = 0;

            var result = Execute(cx =>
              {
                  IQueryable<Data.Audit> result1 = null;

                  if (StartDate.HasValue && EndDate.HasValue) {
                      result1 = cx.Audits.Where(x => x.UpdateDate >= StartDate &&  x.UpdateDate <= EndDate);
                  }else
                  {
                      result1 = cx.Audits;
                  }

                 

                  IQueryable<Data.Audit> result2 = result1.Where(x => x.Account.Username.Contains(Search) || x.Account.FirstName.Contains(Search) || x.Account.LastName.Contains(Search) || x.FieldName.Contains(Search) || x.NewValue.Contains(Search) || x.OldValue.Contains(Search) || x.TableName.Contains(Search));

                  IQueryable<Data.Audit> result3 = null;

                  switch (ColumnSort)
                  {
                      case 0:
                          if (Direction.Equals("desc"))
                              result3 = result2.OrderByDescending(x => x.TableName);
                          else
                              result3 = result2.OrderBy(x => x.TableName);
                          break;
                      case 1:
                          if (Direction.Equals("desc"))
                              result3 = result2.OrderByDescending(x => x.PrimaryKeyId.ToString());
                          else
                              result3 = result2.OrderBy(x => x.PrimaryKeyId.ToString());
                          break;
                      case 2:
                          if (Direction.Equals("desc"))
                              result3 = result2.OrderByDescending(x => x.FieldName);
                          else
                              result3 = result2.OrderBy(x => x.FieldName);
                          break;
                      case 3:
                          if (Direction.Equals("desc"))
                              result3 = result2.OrderByDescending(x => x.OldValue);
                          else
                              result3 = result2.OrderBy(x => x.OldValue);
                          break;
                      case 4:
                          if (Direction.Equals("desc"))
                              result3 = result2.OrderByDescending(x => x.NewValue);
                          else
                              result3 = result2.OrderBy(x => x.NewValue);
                          break;
                      case 5:
                          if (Direction.Equals("desc"))
                              result3 = result2.OrderByDescending(x => x.UpdateDate);
                          else
                              result3 = result2.OrderBy(x => x.UpdateDate);
                          break;
                      default:
                          if (Direction.Equals("desc"))
                              result3 = result2.OrderByDescending(x => x.Account.FirstName + " " + x.Account.LastName);
                          else
                              result3 = result2.OrderBy(x => x.Account.FirstName + " " + x.Account.LastName);
                          break;

                  }


                  c = result1.Count();
                  f = result3.Count();


                  return result3.Skip(StartIndex).Take(Length).ToList().Select(a => (Models.Audit)a).ToList();
              });

            count = c;
            filtered = f;

            return result;

        }



        public List<Models.Audit> GetAllAudits()
        {

            var result = Execute(cx =>
            {

                return cx.Audits.ToList().Select(a => (Models.Audit)a).ToList();
            });


            return result;

        }
    }
}
