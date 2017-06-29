using MySql.Data.MySqlClient;
using ReturnTrue.Utilities.Cryptography;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.DataImporter
{
    class Program
    {

        enum TableNumber
        {
            Account = 1,
            Provider = 2,
            Patient = 4,
            Visit = 8,
            Case = 16
        }

        static void Main(string[] args)
        {
            Console.WriteLine("SADFM Data Import Wizard");
            Console.WriteLine("========================\n\n");
            Console.Write("MySql source host: ");
#if(DEBUG)
            string mysqlSource = "hjlmedicalservicescc.dedicated.co.za";
            Console.WriteLine(mysqlSource);
#else
            string mysqlSource = Console.ReadLine();
#endif
            Console.Write("MySql source schema: ");
#if(DEBUG)
            string mysqlSchema = "sadfmcoz_sadfm";
            Console.WriteLine(mysqlSchema);
#else
            string mysqlSchema = Console.ReadLine();
#endif
            Console.Write("MySql source username: ");
#if(DEBUG)
            string mysqlUsername = "sadfmcoz_rt_yoda";
            Console.WriteLine(mysqlUsername);
#else
            string mysqlUsername = Console.ReadLine();
#endif
            Console.Write("MySql source password: ");
            string mysqlPassword = Console.ReadLine();

            Console.WriteLine("========================\n\n");
            Console.Write("SQL target host: ");
#if(DEBUG)
            string sqlTarget = ".";
            Console.WriteLine(sqlTarget);
#else
            string sqlTarget = Console.ReadLine();
#endif
            Console.Write("SQL target schema: ");
#if(DEBUG)
            string sqlSchema = "SADFM";
            Console.WriteLine(sqlSchema);
#else
            string sqlSchema = Console.ReadLine();
#endif

            using (MySqlConnection sourceConnection = new MySqlConnection(string.Format("Server={0};Uid={1};Pwd={2};Database={3};", mysqlSource, mysqlUsername, mysqlPassword, mysqlSchema)))
            {
                try
                {
                    sourceConnection.Open();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Cannot open source: " + ex.Message);
                    return;
                }

                using (SqlConnection targetConnection = new SqlConnection(string.Format("Server={0};Database={1};Integrated Security=true;", sqlTarget, sqlSchema)))
                {

                    try
                    {
                        targetConnection.Open();
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("Cannot open target: " + ex.Message);
                        sourceConnection.Close();
                        return;
                    }

                    try
                    {

                        MySqlCommand source = sourceConnection.CreateCommand();
                        SqlCommand target = targetConnection.CreateCommand();
                        target.CommandTimeout = 30000;

                        Console.WriteLine("========================\n\n");
                        Console.Write("Enter user id: ");
                        int sourceUserId = int.Parse(Console.ReadLine());

                        source.CommandText = string.Format("SELECT name FROM nuke_users WHERE user_id={0}", sourceUserId);
                        string sourceName = (string)source.ExecuteScalar();
                        if (string.IsNullOrEmpty(sourceName))
                        {
                            Console.WriteLine("User Id invalid!\nQuitting");
                            return;
                        }

                        List<ScaleItemMapping> mapping = new List<ScaleItemMapping>();
                        mapping.AddRange(MakeRange(target, "Alpha", new Dictionary<string, string> {
                            { "A_cns", "CNS"},
                            { "A_pain_ear_eye_sensory", "PEES"},
                            { "A_mouth_nose_throat", "MNT"},
                            { "A_cvs", "CVS"},
                            { "A_respirator", "RESP"},
                            { "A_gastro_intestinal", "GI"},
                            { "A_genito_urinary", "GU"},
                            { "A_movement", "MOVE"},
                            { "A_skin", "SKIN"},
                            { "A_haemat_immuno", "HI"},
                            { "A_water_electrolites_minirals", "WEM"},
                            { "A_endocrine_metabolic", "EM"}
                        }));
                        mapping.AddRange(MakeRange(target, "Beta", new Dictionary<string, string> {
                            { "B_eat", "Eating"},
                            { "B_groom", "Grooming"},
                            { "B_bath", "Bathing"},
                            { "B_dress_upper", "DressingUpperBody"},
                            { "B_dress_lower", "DressingLowerBody"},
                            { "B_toilet", "Toileting"},
                            { "B_bladder", "BladderManagement"},
                            { "B_bowel", "BowelManagement"},
                            { "B_transfer_bed", "TransferBed"},
                            { "B_tranfer_toilet", "TransferToilet"},
                            { "B_transfer_tub", "TransferBath"},
                            { "B_loco_walk", "LocomotionWalk"},
                            { "B_loco_stairs", "LocomotionStairs"},
                            { "B_loco_comprehend", "Comprehension"},
                            { "B_express", "Expression"},
                            { "B_social", "SocialInteraction"},
                            { "B_problem", "ProblemSolving"},
                            { "B_memory", "Memory"}
                        }));
                        mapping.AddRange(MakeRange(target, "Gamma", new Dictionary<string, string> {
                            { "G_meal_prepare", "MealPreparation"},
                            { "G_household_chores", "HouseholdChores"},
                            { "G_home_car_access", "Accessibility"},
                            { "G_commuting", "Commuting"},
                            { "G_errands", "Errands"},
                            { "G_money_matters", "MoneyMatters"},
                            { "G_self_medication", "SelfMedication"},
                            { "G_emotional_stability", "EmotionalStability"}
                        }));
                        mapping.AddRange(MakeRange(target, "Delta", new Dictionary<string, string> {
                            { "D_comprehend", "RealityGaps" },
                            { "D_express", "IncongruousActs" },
                            { "D_social_interact", "SelfAbsorption" },
                            { "D_problem_solve", "Destructiveness" },
                            { "D_memory", "ConcentrationGaps" }
                        }));
                        mapping.AddRange(MakeRange(target, "FAM", new Dictionary<string, string> {
                            { "F_swallowing", "Swallowing" },
                            { "F_car_transfer", "CarTransfer" },
                            { "F_comunity_mobility", "CommunityMobility" },
                            { "F_reading", "Reading" },
                            { "F_writing", "Writing" },
                            { "F_speech_intelligibility", "Speech" },
                            { "F_emotional_status", "EmotionalStatus" },
                            { "F_adjustment_to_limitations", "AdjustmentToLimits" },
                            { "F_leisure_activities", "LeisureActivities" },
                            { "F_orientation", "Orientation" },
                            { "F_concentration", "Concentration" },
                            { "F_safety_awareness", "SafetyAwareness" }
                        }));






                        /*UNMAPPED
                         * 
                         
    `sadfm_patient_scores`.`Z_patient_motivation`,
    `sadfm_patient_scores`.`Z_patient_person_resilience`,
    `sadfm_patient_scores`.`Z_patient_problem_solving`,
    `sadfm_patient_scores`.`Z_patient_attitude_adjustment`,
    `sadfm_patient_scores`.`Z_patient_emotional_control`,
    `sadfm_patient_scores`.`Z_patient_self_esteem`,
    `sadfm_patient_scores`.`Z_patient_relationship_management`,
    `sadfm_patient_scores`.`Z_patient_role_taking`,
    `sadfm_patient_scores`.`Z_patient_self_sustainability`,
    `sadfm_patient_scores`.`Z_patient_self_presentation`
FROM `sadfmcoz_sadfm`.`sadfm_patient_scores`;
                         * 
                         * 
                         * */


                        /*
                            

                        source.CommandText = 
                    SELECT `sadfm_patient_scores`.`id`,
`sadfm_patient_scores`.`party_id`,
`sadfm_patient_scores`.`user_id`,
`sadfm_patient_scores`.`usergroup_id`,
`sadfm_patient_scores`.`case_id`,
`sadfm_patient_scores`.`progress_type`,
`sadfm_patient_scores`.`score_date`,
`sadfm_patient_scores`.`level_of_care`,
`sadfm_patient_scores`.`bed`,
`sadfm_patient_scores`.`docter_name`,
`sadfm_patient_scores`.`docter_number`,
`sadfm_patient_scores`.`scorer`,
`sadfm_patient_scores`.`comments`,
`sadfm_patient_scores`.`A_cns`,
`sadfm_patient_scores`.`A_pain_ear_eye_sensory`,
`sadfm_patient_scores`.`A_mouth_nose_throat`,
`sadfm_patient_scores`.`A_cvs`,
`sadfm_patient_scores`.`A_respirator`,
`sadfm_patient_scores`.`A_gastro_intestinal`,
`sadfm_patient_scores`.`A_genito_urinary`,
`sadfm_patient_scores`.`A_movement`,
`sadfm_patient_scores`.`A_skin`,
`sadfm_patient_scores`.`A_haemat_immuno`,
`sadfm_patient_scores`.`A_water_electrolites_minirals`,
`sadfm_patient_scores`.`A_endocrine_metabolic`,
`sadfm_patient_scores`.`B_eat`,
`sadfm_patient_scores`.`B_groom`,
`sadfm_patient_scores`.`B_bath`,
`sadfm_patient_scores`.`B_dress_upper`,
`sadfm_patient_scores`.`B_dress_lower`,
`sadfm_patient_scores`.`B_toilet`,
`sadfm_patient_scores`.`B_bladder`,
`sadfm_patient_scores`.`B_bowel`,
`sadfm_patient_scores`.`B_transfer_bed`,
`sadfm_patient_scores`.`B_tranfer_toilet`,
`sadfm_patient_scores`.`B_transfer_tub`,
`sadfm_patient_scores`.`B_loco_walk`,
`sadfm_patient_scores`.`B_loco_walk_txt`,
`sadfm_patient_scores`.`B_loco_stairs`,
`sadfm_patient_scores`.`B_loco_comprehend`,
`sadfm_patient_scores`.`B_loco_comprehend_txt`,
`sadfm_patient_scores`.`B_express`,
`sadfm_patient_scores`.`B_express_txt`,
`sadfm_patient_scores`.`B_social`,
`sadfm_patient_scores`.`B_problem`,
`sadfm_patient_scores`.`B_memory`,
`sadfm_patient_scores`.`G_meal_prepare`,
`sadfm_patient_scores`.`G_meal_prepare_2`,
`sadfm_patient_scores`.`G_household_chores`,
`sadfm_patient_scores`.`G_household_chores_2`,
`sadfm_patient_scores`.`G_home_car_access`,
`sadfm_patient_scores`.`G_home_car_access_2`,
`sadfm_patient_scores`.`G_commuting`,
`sadfm_patient_scores`.`G_commuting_2`,
`sadfm_patient_scores`.`G_errands`,
`sadfm_patient_scores`.`G_errands_2`,
`sadfm_patient_scores`.`G_money_matters`,
`sadfm_patient_scores`.`G_money_matters_2`,
`sadfm_patient_scores`.`G_self_medication`,
`sadfm_patient_scores`.`G_self_medication_2`,
`sadfm_patient_scores`.`G_emotional_stability`,
`sadfm_patient_scores`.`G_emotional_stability_2`,
`sadfm_patient_scores`.`D_comprehend`,
`sadfm_patient_scores`.`D_express`,
`sadfm_patient_scores`.`D_social_interact`,
`sadfm_patient_scores`.`D_problem_solve`,
`sadfm_patient_scores`.`D_memory`,
`sadfm_patient_scores`.`A_blood_pressure`,
`sadfm_patient_scores`.`A_pulse`,
`sadfm_patient_scores`.`A_temperature`,
`sadfm_patient_scores`.`A_respiration`,
`sadfm_patient_scores`.`A_ltn`,
`sadfm_patient_scores`.`A_edema`,
`sadfm_patient_scores`.`A_localised_swellings`,
`sadfm_patient_scores`.`A_dehydration`,
`sadfm_patient_scores`.`A_pressure_points`,
`sadfm_patient_scores`.`A_pain`,
`sadfm_patient_scores`.`A_urine`,
`sadfm_patient_scores`.`A_stool`,
`sadfm_patient_scores`.`A_intake`,
`sadfm_patient_scores`.`A_paleness_yellowness`,
`sadfm_patient_scores`.`F_swallowing`,
`sadfm_patient_scores`.`F_car_transfer`,
`sadfm_patient_scores`.`F_comunity_mobility`,
`sadfm_patient_scores`.`F_reading`,
`sadfm_patient_scores`.`F_writing`,
`sadfm_patient_scores`.`F_speech_intelligibility`,
`sadfm_patient_scores`.`F_emotional_status`,
`sadfm_patient_scores`.`F_adjustment_to_limitations`,
`sadfm_patient_scores`.`F_leisure_activities`,
`sadfm_patient_scores`.`F_orientation`,
`sadfm_patient_scores`.`F_concentration`,
`sadfm_patient_scores`.`F_safety_awareness`,
`sadfm_patient_scores`.`Z_support_motivation`,
`sadfm_patient_scores`.`Z_support_person_resilience`,
`sadfm_patient_scores`.`Z_support_problem_solving`,
`sadfm_patient_scores`.`Z_support_attitude_adjustment`,
`sadfm_patient_scores`.`Z_support_emotional_control`,
`sadfm_patient_scores`.`Z_support_self_esteem`,
`sadfm_patient_scores`.`Z_support_relationship_management`,
`sadfm_patient_scores`.`Z_support_role_taking`,
`sadfm_patient_scores`.`Z_support_self_sustainability`,
`sadfm_patient_scores`.`Z_support_self_presentation`,
`sadfm_patient_scores`.`Z_patient_motivation`,
`sadfm_patient_scores`.`Z_patient_person_resilience`,
`sadfm_patient_scores`.`Z_patient_problem_solving`,
`sadfm_patient_scores`.`Z_patient_attitude_adjustment`,
`sadfm_patient_scores`.`Z_patient_emotional_control`,
`sadfm_patient_scores`.`Z_patient_self_esteem`,
`sadfm_patient_scores`.`Z_patient_relationship_management`,
`sadfm_patient_scores`.`Z_patient_role_taking`,
`sadfm_patient_scores`.`Z_patient_self_sustainability`,
`sadfm_patient_scores`.`Z_patient_self_presentation`
FROM `sadfmcoz_sadfm`.`sadfm_patient_scores`;


                    */

                        source.CommandText = string.Format("select COUNT(*) from gappedit_parties where user_id={0}", sourceUserId);
                        long patientCount = (long)source.ExecuteScalar();
                        source.CommandText = string.Format("select COUNT(*) FROM gappedit_parties p INNER JOIN sadfm_patient_scores s ON (p.id=s.party_id AND p.user_id={0})", sourceUserId);
                        long visitCount = (long)source.ExecuteScalar();

                        Console.WriteLine("".PadLeft(sourceName.Length + 13, '-'));
                        Console.WriteLine("| Import {0} ? |", sourceName);
                        Console.WriteLine("| Patients {0} ? |", patientCount.ToString().PadRight(sourceName.Length - 2));
                        Console.WriteLine("| Visits {0} ? |", visitCount.ToString().PadRight(sourceName.Length));
                        Console.WriteLine("".PadLeft(sourceName.Length + 13, '-'));
                        Console.Write("[Yes/No]  ? ");
                        if (!Console.ReadLine().ToLower().StartsWith("y"))
                        {
                            Console.WriteLine("Quitting");
                            return;
                        }
                        Console.Write("Enter new password: ");
                        string newPassword = Console.ReadLine();

                        target.CommandText = "SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp";
                        Guid lastUpdateAccountId = (Guid)target.ExecuteScalar();
                        target.CommandText = "SELECT lisa.ListItemId FROM ListItem lis INNER JOIN ListItem lisa ON (lis.ParentId IS NULL AND lis.Name = 'Status' AND lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active')";
                        Guid statusActiveId = (Guid)target.ExecuteScalar();

                        Guid providerId = new Guid(sourceUserId, (int)TableNumber.Provider, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                        target.CommandText = string.Format("SELECT COUNT(*) FROM Provider WHERE ProviderId = '{0}'", providerId);
                        if ((int)target.ExecuteScalar() == 0)
                        {
                            //CREATE THE PROVIDER
                            target.CommandText = string.Format(
@"INSERT INTO Provider (ProviderId, Name, IsGroup, DateCreatedTimestamp, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ('{0}', '{1}', 0, GETDATE(), GETDATE(), '{2}')", providerId, sourceName, lastUpdateAccountId);
                            target.ExecuteNonQuery();

                        }

                        Guid accountId = new Guid(sourceUserId, (int)TableNumber.Account, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                        target.CommandText = string.Format("SELECT COUNT(*) FROM Account WHERE AccountId = '{0}'", accountId);
                        if ((int)target.ExecuteScalar() == 0)
                        {
                            target.CommandText = "SELECT liat.ListItemId FROM ListItem liat INNER JOIN ListItem lip ON (lip.ListItemId = liat.ParentId AND lip.ParentId IS NULL AND lip.Name = 'AccountType' AND liat.Name = 'User')";
                            Guid accountTypeId = (Guid)target.ExecuteScalar();

                            source.CommandText = string.Concat("SELECT name, username, user_email from nuke_users where user_id=", sourceUserId);
                            DataTable sourceUser = new DataTable();
                            using (MySqlDataAdapter a = new MySqlDataAdapter(source))
                                a.Fill(sourceUser);

                            target.CommandText = string.Format(
                            @"INSERT INTO Account (
    AccountId, AccountTypeId, Username, Password, 
    EmailAddress, FirstName, StatusId, FirstSignIn, 
    DateCreatedTimestamp, LastUpdateTimestamp, LastUpdateAccountId, ResetBySuperAdmin)
VALUES (
    '{0}', '{1}', '{2}', '{3}', 
    '{4}', '{5}', '{6}', 1,
    GETDATE(), GETDATE(), '{7}', 0)",
                            accountId, accountTypeId, sourceUser.Rows[0]["username"], MD5.Hex(SHA1.Hex(newPassword)),
                            sourceUser.Rows[0]["user_email"], sourceUser.Rows[0]["name"], statusActiveId, lastUpdateAccountId);

                            target.ExecuteNonQuery();
                        }

                        source.CommandText = string.Format(
@"SELECT p.id, t.description as title, r.description as race, CASE gender WHEN 1 THEN 'Male' WHEN 2 THEN 'Female' ELSE null END as gender, idnumber, name, surname, birthdate
FROM gappedit_parties p
INNER JOIN gappedit_party_titles t ON (p.title = t.id AND p.user_id={0})
INNER JOIN gappedit_party_races r ON (p.race = r.id)", sourceUserId);
                        DataTable sourcePatient = new DataTable();
                        using (MySqlDataAdapter a = new MySqlDataAdapter(source))
                            a.Fill(sourcePatient);
                        foreach (DataRow patientSource in sourcePatient.Rows)
                        {

                            try
                            {
                                Console.WriteLine("Processing {0} {1} | {2}", patientSource["name"], patientSource["surname"], patientSource["id"]);
                                Guid patientId = new Guid((int)patientSource["id"], (int)TableNumber.Patient, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                                target.CommandText = string.Format("SELECT COUNT(*) FROM Patient WHERE PatientId = '{0}'", patientId);
                                if ((int)target.ExecuteScalar() == 0)
                                {

                                    target.CommandText = string.Format("SELECT lisa.ListItemId FROM ListItem lis INNER JOIN ListItem lisa ON (lis.ParentId IS NULL AND lis.Name = 'Title' AND lisa.ParentId = lis.ListItemId AND lisa.Name = '{0}')", ((string)patientSource["title"]).Substring(1));
                                    Guid titleId = (Guid)target.ExecuteScalar();


                                    source.CommandText = string.Format("SELECT * FROM sadfm_patient_cases where party_id={0} ORDER BY onset_date DESC LIMIT 0, 1", patientSource["id"]);
                                    DataTable sourceCase = new DataTable();
                                    using (MySqlDataAdapter a = new MySqlDataAdapter(source))
                                        a.Fill(sourceCase);

                                    source.CommandText = string.Format("SELECT * FROM sadfm_medical_schemes where code={0}", sourceCase.Rows[0]["medical_schema_id"]);
                                    DataTable sourceMedicalSchemes = new DataTable();
                                    using (MySqlDataAdapter a = new MySqlDataAdapter(source))
                                        a.Fill(sourceMedicalSchemes);

                                    target.CommandText = string.Format("SELECT ListItemId FROM ListItem WHERE Description = '{0}' AND ParentId = (Select ListItemId FROM [ListItem] WHERE Name = 'MedicalScheme') ", sourceMedicalSchemes.Rows[0]["name"].ToString());
                                    DataTable targetMedicalScheme = new DataTable();
                                    using (SqlDataAdapter da = new SqlDataAdapter(target))
                                        da.Fill(targetMedicalScheme);

                                    Guid? medicalSchemeId = (Guid?)null;

                                    if (targetMedicalScheme.Rows.Count != 0)
                                    {
                                        medicalSchemeId = (Guid)targetMedicalScheme.Rows[0]["ListItemId"];
                                    }

                                    target.CommandText = string.Format("Select ListItemId FROM [ListItem] WHERE Name = 'SouthAfrica'");
                                    DataTable targetCountry = new DataTable();
                                    using (SqlDataAdapter da = new SqlDataAdapter(target))
                                        da.Fill(targetCountry);

                                    Guid? countryId = (Guid?)null;

                                    if (targetCountry.Rows.Count != 0)
                                    {
                                        countryId = (Guid)targetCountry.Rows[0]["ListItemId"];
                                    }


                                    target.CommandText = string.Format("SELECT ListItemId FROM ListItem WHERE Description = '{0}' AND ParentId = (Select ListItemId FROM [ListItem] WHERE Name = 'SouthAfrica') ", sourceCase.Rows[0]["province_address"].ToString());
                                    DataTable targetProvince = new DataTable();
                                    using (SqlDataAdapter da = new SqlDataAdapter(target))
                                        da.Fill(targetProvince);

                                    Guid? provinceId = (Guid?)null;

                                    if (targetProvince.Rows.Count != 0)
                                    {
                                        provinceId = (Guid)targetProvince.Rows[0]["ListItemId"];
                                    }

                                    Guid? cityId = (Guid?)null;
                                    if (provinceId == null)
                                    {
                                        target.CommandText = string.Format("SELECT ListItemId FROM ListItem WHERE Description = '{0}' AND ParentId = '{1}'", sourceCase.Rows[0]["town_address"].ToString().Replace("'", "''"), providerId);
                                        DataTable targetCity = new DataTable();
                                        using (SqlDataAdapter da = new SqlDataAdapter(target))
                                            da.Fill(targetCity);

                                        if (targetCity.Rows.Count != 0)
                                        {
                                            cityId = (Guid)targetCity.Rows[0]["ListItemId"];
                                        }
                                    }



                                    string streetaddress = "";
                                    if (sourceCase.Rows.Count != 0)
                                    {
                                        streetaddress = sourceCase.Rows[0]["street_address"].ToString().Replace("'", "''");
                                    }

                                    target.CommandText = string.Format(
    @"INSERT INTO Patient (
    PatientId, FirstName, LastName, BirthDate, TitleId, DateCreatedTimestamp, LastUpdateTimestamp, LastUpdateAccountId, IDNumber, Street, CityId,ProvinceId,MedicalSchemeId,MedicalSchemeMembershipNumber,CountryId)
VALUES (
    '{0}', '{1}', '{2}', '{3}', '{4}', GETDATE(), GETDATE(), '{5}','{6}','{7}',{8},{9},{10},'{11}','{12}')",
                                                                                        patientId, patientSource["name"], patientSource["surname"], patientSource["birthdate"], titleId, lastUpdateAccountId, patientSource["idnumber"], streetaddress, cityId.HasValue ? "'" + cityId.Value.ToString() + "'" : "NULL", provinceId.HasValue ? "'" + provinceId.Value.ToString() + "'" : "NULL", medicalSchemeId.HasValue ? "'" + medicalSchemeId.Value.ToString() + "'" : "NULL", sourceCase.Rows[0]["medical_schema_no"], countryId.Value.ToString());
                                    target.ExecuteNonQuery();

                                    if (!(patientSource["gender"] is DBNull))
                                    {
                                        target.CommandText = string.Format("SELECT lisa.ListItemId FROM ListItem lis INNER JOIN ListItem lisa ON (lis.ParentId IS NULL AND lis.Name = 'Gender' AND lisa.ParentId = lis.ListItemId AND lisa.Name = '{0}')", patientSource["gender"]);
                                        target.CommandText = string.Format("UPDATE Patient SET GenderId = '{0}' WHERE PatientId = '{1}'", target.ExecuteScalar(), patientId);
                                        target.ExecuteScalar();
                                    }

                                    if (!(patientSource["race"] is DBNull))
                                    {
                                        target.CommandText = string.Format("SELECT lisa.ListItemId FROM ListItem lis INNER JOIN ListItem lisa ON (lis.ParentId IS NULL AND lis.Name = 'Race' AND lisa.ParentId = lis.ListItemId AND lisa.Name = '{0}')", ((string)patientSource["race"]).Substring(1));
                                        target.CommandText = string.Format("UPDATE Patient SET RaceId = '{0}' WHERE PatientId = '{1}'", target.ExecuteScalar(), patientId);
                                        target.ExecuteScalar();
                                    }

                                }

                                source.CommandText = string.Format("SELECT id, score_date, {0} FROM sadfm_patient_scores WHERE party_id = {1}", string.Join(",", mapping.Select(sim => sim.SourceField)), patientSource["id"]);
                                DataTable visitSource = new DataTable();
                                using (MySqlDataAdapter a = new MySqlDataAdapter(source))
                                    a.Fill(visitSource);
                                foreach (DataRow visitRow in visitSource.Rows)
                                {
                                    Guid visitId = new Guid((int)visitRow["id"], (int)TableNumber.Visit, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                                    target.CommandText = string.Format("SELECT COUNT(*) FROM Visit WHERE VisitId = '{0}'", visitId);
                                    if ((int)target.ExecuteScalar() == 0)
                                    {
                                        target.CommandText = string.Format("INSERT INTO Visit (VisitId, PatientId, VisitDate, VisitDuration) VALUES ('{0}', '{1}', '{2}', 15)", visitId, patientId, visitRow["score_date"]);
                                        target.ExecuteScalar();
                                        for (int i = 2; i < visitSource.Columns.Count; i++)
                                        {
                                            if (visitRow[i] is DBNull)
                                                continue;

                                            target.CommandText = string.Format("INSERT INTO VisitScore (VisitId, ScoreId) VALUES ('{0}', '{1}')", visitId, mapping.Single(sim => sim.SourceField == visitSource.Columns[i].ColumnName).TargetItemId[(int)Convert.ChangeType(visitRow[i], typeof(int))]);
                                            target.ExecuteNonQuery();
                                        }
                                    }
                                }

                                source.CommandText = string.Format("SELECT id, hospital_admission_date, hospital_discharge_date, primary_diagnosis, secondary_diagnosis1, secondary_diagnosis2, secondary_diagnosis3, secondary_diagnosis4, secondary_diagnosis5, secondary_diagnosis6, secondary_diagnosis7, secondary_diagnosis8, secondary_diagnosis9, secondary_diagnosis10,impairment_group_id FROM sadfm_patient_cases where party_id={0}", patientSource["id"]);
                                DataTable caseSource = new DataTable();
                                using (MySqlDataAdapter a = new MySqlDataAdapter(source))
                                    a.Fill(caseSource);



                                foreach (DataRow caseRow in caseSource.Rows)
                                {

                                    Guid? impairmentGroupId = (Guid?)null;

                                    string impairmentGroupValue = caseRow["impairment_group_id"].ToString();
                                    target.CommandText = string.Format("SELECT C.ListItemId FROM [ListItem] as A JOIN [ListItem] as B ON A.Name = 'ImpairmentClass' AND A.ListItemId = B.ParentId JOIN [ListItem] as C ON C.ParentId = B.ListItemId AND B.Value + '.' + C.Value = '{0}'", impairmentGroupValue);
                                    DataTable targetImpairmentGroup = new DataTable();
                                    using (SqlDataAdapter da = new SqlDataAdapter(target))
                                        da.Fill(targetImpairmentGroup);

                                    if (targetImpairmentGroup.Rows.Count != 0)
                                    {
                                        impairmentGroupId = (Guid)targetImpairmentGroup.Rows[0]["ListItemId"];
                                    }




                                    Guid caseId = new Guid((int)caseRow["id"], (int)TableNumber.Case, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                                    target.CommandText = string.Format("SELECT COUNT(*) FROM [Case] WHERE CaseId = '{0}'", caseId);
                                    if ((int)target.ExecuteScalar() == 0)
                                    {
                                        Guid? icd10Id = null;
                                        if (!(caseRow["primary_diagnosis"] is DBNull))
                                        {
                                            target.CommandText = string.Format("SELECT ListItemId FROM ListItem WHERE Name = '{0}'", caseRow["primary_diagnosis"]);
                                            object tmp = target.ExecuteScalar();
                                            if (!(tmp == null))
                                                icd10Id = (Guid)tmp;

                                            target.CommandText = string.Format(@"INSERT INTO [Case] (CaseId,PatientId,StartDate,ICD10Id,DateCreatedTimestamp,LastUpdateTimestamp,LastUpdateAccountId,EndDate,ImpairmentGroupId)
VALUES ('{0}', '{1}', '{2}', {3}, getdate(), getdate(), '{4}', {5},{6})",
                                                caseId, patientId, (DateTime)caseRow["hospital_admission_date"], icd10Id.HasValue ? string.Format("'{0}'", icd10Id) : "null",
                                                accountId, caseRow["hospital_discharge_date"] is DBNull ? "null" : "'" + ((DateTime)caseRow["hospital_discharge_date"]).ToString() + "'", impairmentGroupId.HasValue ? "'" + impairmentGroupId.Value.ToString() + "'" : "NULL");
                                            target.ExecuteNonQuery();

                                            target.CommandText = string.Format("INSERT INTO CaseProvider (CaseId,ProviderId,CreatedTimestamp,AssignedTimestamp,LastUpdatedTimestamp,LastUpdatedAccountId,AccountId,DischargeTimestamp) VALUES ('{0}','{1}',getdate(),'{2}',getdate(),'{3}','{3}',{4});", caseId, providerId, (DateTime)caseRow["hospital_admission_date"], accountId, caseRow["hospital_discharge_date"] is DBNull ? "null" : "'" + ((DateTime)caseRow["hospital_discharge_date"]).ToString() + "'");
                                            target.ExecuteNonQuery();
                                        }
                                        else
                                        {
                                            Console.WriteLine(string.Format("ICD code not found: {0}", caseRow["primary_diagnosis"]));
                                            //throw new ApplicationException(string.Format("ICD code not found: {0}", caseRow["primary_diagnosis"]));
                                        }
                                    }

                                    for (int i = 1; i < 11; i++)
                                    {

                                        Guid caseIdSecondary = new Guid((int)caseRow["id"], (int)TableNumber.Case, 0, 0, 0, 0, 0, 0, 0, 0, (byte)i);
                                        target.CommandText = string.Format("SELECT COUNT(*) FROM [Case] WHERE CaseId = '{0}'", caseId);
                                        if ((int)target.ExecuteScalar() == 0)
                                        {
                                            Guid? icd10Id = null;
                                            if (!(caseRow["secondary_diagnosis" + i.ToString()] is DBNull))
                                            {
                                                target.CommandText = string.Format("SELECT ListItemId FROM ListItem WHERE Name = '{0}'", caseRow["secondary_diagnosis" + i.ToString()]);
                                                object tmp = target.ExecuteScalar();
                                                if (!(tmp == null))
                                                    icd10Id = (Guid)tmp;

                                                target.CommandText = string.Format(@"INSERT INTO [Case] (CaseId,PatientId,StartDate,ICD10Id,DateCreatedTimestamp,LastUpdateTimestamp,LastUpdateAccountId,EndDate,ImpairmentGroupId)
VALUES ('{0}', '{1}', '{2}', {3}, getdate(), getdate(), '{4}', {5},{6})",
                                                    caseIdSecondary, patientId, (DateTime)caseRow["hospital_admission_date"], icd10Id.HasValue ? string.Format("'{0}'", icd10Id) : "null",
                                                    accountId, caseRow["hospital_discharge_date"] is DBNull ? "null" : ((DateTime)caseRow["hospital_discharge_date"]).ToString("yyyy-MM-dd"),impairmentGroupId.HasValue ? "'" + impairmentGroupId.Value.ToString() + "'" : "NULL");
                                                target.ExecuteNonQuery();

                                                target.CommandText = string.Format("INSERT INTO CaseProvider (CaseId,ProviderId,CreatedTimestamp,AssignedTimestamp,LastUpdatedTimestamp,LastUpdatedAccountId) VALUES ('{0}','{1}',getdate(),'{2}',getdate(),'{3}');", caseIdSecondary, providerId, (DateTime)caseRow["hospital_admission_date"], accountId);
                                                target.ExecuteNonQuery();
                                            }

                                        }
                                    }








                                }



                            }
                            catch (Exception ex)
                            {
                                Console.WriteLine("Something went wrong: " + ex.Message);
                            }

                        }


                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("Something went wrong: " + ex.Message);
                    }
                    finally
                    {
                        sourceConnection.Close();
                    }

                }
            }
            Console.WriteLine("Done!\n\nPress [Enter] to quit");
            Console.ReadLine();
        }

        private static IEnumerable<ScaleItemMapping> MakeRange(SqlCommand target, string scale, Dictionary<string, string> items)
        {
            List<ScaleItemMapping> result = new List<ScaleItemMapping>();
            target.CommandText = "SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND Name = 'Scale'";
            Guid scaleId = (Guid)target.ExecuteScalar();
            target.CommandText = string.Format("SELECT ListItemId FROM ListItem WHERE ParentId = '{0}' AND Name = '{1}'", scaleId, scale);
            try
            {
                scaleId = (Guid)target.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Scale not found : " + scale, ex);
            }
            foreach (var kvp in items)
            {
                target.CommandText = string.Format("SELECT ListItemId, Value FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE ParentId = '{0}' AND Code = '{1}') AND Value IS NOT NULL", scaleId, kvp.Value);
                DataTable values = new DataTable();
                using (SqlDataAdapter da = new SqlDataAdapter(target))
                    da.Fill(values);
                try
                {
                    result.Add(new ScaleItemMapping
                    {
                        SourceField = kvp.Key,
                        TargetItemId = values.Rows.OfType<DataRow>().ToDictionary(dr => int.Parse((string)dr["Value"]), dr => (Guid)dr["ListItemId"])
                    });
                }
                catch (Exception ex)
                {
                    throw new ApplicationException("Cannot find scale item " + kvp.Value + " on " + scale, ex);
                }
            }
            return result;

        }
    }
}
