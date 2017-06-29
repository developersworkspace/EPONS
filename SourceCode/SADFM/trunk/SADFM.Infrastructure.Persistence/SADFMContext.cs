namespace SADFM.Infrastructure.Persistence
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using Models;

    public partial class SADFMContext : DbContext
    {
        public SADFMContext()
            : base("name=SADFMContext")
        {
        }

        public virtual DbSet<Account> Accounts { get; set; }
        public virtual DbSet<AccountType> AccountTypes { get; set; }
        public virtual DbSet<AdmissionStatus> AdmissionStatus { get; set; }
        public virtual DbSet<AdmissionType> AdmissionTypes { get; set; }
        public virtual DbSet<Careplan> Careplans { get; set; }
        public virtual DbSet<Case> Cases { get; set; }
        public virtual DbSet<City> Cities { get; set; }
        public virtual DbSet<Country> Countries { get; set; }
        public virtual DbSet<Facility> Facilities { get; set; }
        public virtual DbSet<FacilityGroup> FacilityGroups { get; set; }
        public virtual DbSet<FacilityPermission> FacilityPermissions { get; set; }
        public virtual DbSet<FacilityServiceType> FacilityServiceTypes { get; set; }
        public virtual DbSet<Frequency> Frequencies { get; set; }
        public virtual DbSet<Gender> Genders { get; set; }
        public virtual DbSet<ICD10Code> ICD10Code { get; set; }
        public virtual DbSet<Language> Languages { get; set; }
        public virtual DbSet<MedicalScheme> MedicalSchemes { get; set; }
        public virtual DbSet<Patient> Patients { get; set; }
        public virtual DbSet<PatientCarePlan> PatientCarePlans { get; set; }
        public virtual DbSet<PatientFacility> PatientFacilities { get; set; }
        public virtual DbSet<Permission> Permissions { get; set; }
        public virtual DbSet<ProfessionalBody> ProfessionalBodies { get; set; }
        public virtual DbSet<Province> Provinces { get; set; }
        public virtual DbSet<Race> Races { get; set; }
        public virtual DbSet<ResidentialEnviromentType> ResidentialEnviromentTypes { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<RoleGroup> RoleGroups { get; set; }
        public virtual DbSet<ScoreItem> ScoreItems { get; set; }
        public virtual DbSet<ScoreValue> ScoreValues { get; set; }
        public virtual DbSet<ServiceType> ServiceTypes { get; set; }
        public virtual DbSet<ServiceTypeGroup> ServiceTypeGroups { get; set; }
        public virtual DbSet<Status> Status { get; set; }
        public virtual DbSet<Title> Titles { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Account>()
                .Property(e => e.Username)
                .IsUnicode(false);

            modelBuilder.Entity<Account>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<Account>()
                .Property(e => e.EmailAddress)
                .IsUnicode(false);

            modelBuilder.Entity<Account>()
                .Property(e => e.Firstname)
                .IsUnicode(false);

            modelBuilder.Entity<Account>()
                .Property(e => e.Lastname)
                .IsUnicode(false);

            modelBuilder.Entity<Account>()
                .Property(e => e.IDNumberType)
                .IsUnicode(false);

            modelBuilder.Entity<Account>()
                .Property(e => e.IDNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Account>()
                .Property(e => e.SecurityQuestionAnswer)
                .IsUnicode(false);

            modelBuilder.Entity<Account>()
                .Property(e => e.PracticeNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Account>()
                .Property(e => e.RegistrationNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Account>()
                .HasMany(e => e.Cases)
                .WithOptional(e => e.LastUpdatedAccount)
                .HasForeignKey(e => e.LastUpdatedAccountId);

            modelBuilder.Entity<Account>()
                .HasMany(e => e.FacilityPermissions)
                .WithRequired(e => e.Account)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Account>()
                .HasMany(e => e.Patients)
                .WithOptional(e => e.LastUpdatedAccount)
                .HasForeignKey(e => e.LastUpdatedAccountId);

            modelBuilder.Entity<Account>()
                .HasMany(e => e.PatientFacilities)
                .WithRequired(e => e.Account)
                .HasForeignKey(e => e.TeamMemberId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<AccountType>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<AccountType>()
                .HasMany(e => e.Accounts)
                .WithRequired(e => e.AccountType)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<AdmissionStatus>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<AdmissionType>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Careplan>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Careplan>()
                .HasMany(e => e.PatientCarePlans)
                .WithRequired(e => e.Careplan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Case>()
                .Property(e => e.ReferringDoctorName)
                .IsUnicode(false);

            modelBuilder.Entity<Case>()
                .Property(e => e.ReferringDoctorContact)
                .IsUnicode(false);

            modelBuilder.Entity<Case>()
                .Property(e => e.ReferringDoctorEmailAddress)
                .IsUnicode(false);

            modelBuilder.Entity<Case>()
                .Property(e => e.ReferringDoctorPracticeNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Case>()
                .Property(e => e.TreatingDoctorName)
                .IsUnicode(false);

            modelBuilder.Entity<Case>()
                .Property(e => e.TreatingDoctorContact)
                .IsUnicode(false);

            modelBuilder.Entity<Case>()
                .Property(e => e.TreatingDoctorEmail)
                .IsUnicode(false);

            modelBuilder.Entity<Case>()
                .Property(e => e.TreatingDoctorPracticeNumber)
                .IsUnicode(false);

            modelBuilder.Entity<City>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<City>()
                .HasMany(e => e.FacilityServiceTypes)
                .WithRequired(e => e.City)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Country>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Country>()
                .HasMany(e => e.FacilityServiceTypes)
                .WithRequired(e => e.Country)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Country>()
                .HasMany(e => e.Provinces)
                .WithRequired(e => e.Country)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Facility>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Facility>()
                .HasMany(e => e.FacilityPermissions)
                .WithRequired(e => e.Facility)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Facility>()
                .HasMany(e => e.FacilityServiceTypes)
                .WithRequired(e => e.Facility)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Facility>()
               .HasMany(e => e.PatientCarePlans)
               .WithRequired(e => e.Facility)
               .WillCascadeOnDelete(false);

            modelBuilder.Entity<Facility>()
                .HasMany(e => e.PatientFacilities)
                .WithRequired(e => e.Facility)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Facility>()
                .HasMany(e => e.MedicalSchemes)
                .WithMany(e => e.Facilities)
                .Map(m => m.ToTable("FacilityMedicalScheme").MapLeftKey("FacilityId").MapRightKey("MedicalSchemeId"));

            modelBuilder.Entity<FacilityGroup>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<FacilityGroup>()
                .HasMany(e => e.Facilities)
                .WithRequired(e => e.FacilityGroup)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<FacilityPermission>()
                .HasMany(e => e.Permissions)
                .WithMany(e => e.FacilityPermissions)
                .Map(m => m.ToTable("FacilityPermissionsLink").MapLeftKey("FacilityPermissionsId").MapRightKey("PermissionId"));

            modelBuilder.Entity<FacilityServiceType>()
                .Property(e => e.ContactNumber)
                .IsUnicode(false);

            modelBuilder.Entity<FacilityServiceType>()
                .Property(e => e.Street)
                .IsUnicode(false);

            modelBuilder.Entity<FacilityServiceType>()
                .Property(e => e.PostalCode)
                .IsUnicode(false);

            modelBuilder.Entity<Frequency>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Frequency>()
                .HasMany(e => e.PatientCarePlans)
                .WithRequired(e => e.Frequency)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Gender>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<ICD10Code>()
                .Property(e => e.Code)
                .IsUnicode(false);

            modelBuilder.Entity<ICD10Code>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Language>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<MedicalScheme>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Patient>()
                .Property(e => e.Firstname)
                .IsUnicode(false);

            modelBuilder.Entity<Patient>()
                .Property(e => e.Lastname)
                .IsUnicode(false);

            modelBuilder.Entity<Patient>()
                .Property(e => e.IDNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Patient>()
                .Property(e => e.ContactNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Patient>()
                .Property(e => e.Street)
                .IsUnicode(false);

            modelBuilder.Entity<Patient>()
                .Property(e => e.PostalCode)
                .IsUnicode(false);

            modelBuilder.Entity<Patient>()
                .Property(e => e.NextOfKinName)
                .IsUnicode(false);

            modelBuilder.Entity<Patient>()
                .Property(e => e.NextOfKinContact)
                .IsUnicode(false);

            modelBuilder.Entity<Patient>()
                .Property(e => e.MedicalSchemeMembershipNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Patient>()
                .Property(e => e.NextOfKinEmailAddress)
                .IsUnicode(false);

            modelBuilder.Entity<Patient>()
                .Property(e => e.NextOfKinRelationship)
                .IsUnicode(false);

            modelBuilder.Entity<Patient>()
                .HasMany(e => e.Cases)
                .WithRequired(e => e.Patient)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Patient>()
                .HasMany(e => e.PatientCarePlans)
                .WithRequired(e => e.Patient)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Patient>()
                .HasMany(e => e.PatientFacilities)
                .WithRequired(e => e.Patient)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Permission>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<ProfessionalBody>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Province>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Province>()
                .HasMany(e => e.Cities)
                .WithRequired(e => e.Province)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Province>()
                .HasMany(e => e.FacilityServiceTypes)
                .WithRequired(e => e.Province)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Race>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<ResidentialEnviromentType>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Role>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<RoleGroup>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<RoleGroup>()
                .HasMany(e => e.Roles)
                .WithRequired(e => e.RoleGroup)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ScoreItem>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<ScoreItem>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ScoreItem>()
                .Property(e => e.ToolTip)
                .IsUnicode(false);

            modelBuilder.Entity<ScoreItem>()
                .HasMany(e => e.SubScoreItems)
                .WithOptional(e => e.ParentScoreItem)
                .HasForeignKey(e => e.ParentScoreItemId);

            modelBuilder.Entity<ScoreItem>()
                .HasMany(e => e.ScoreValues)
                .WithRequired(e => e.ScoreItem)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ScoreValue>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<ScoreValue>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ScoreValue>()
                .Property(e => e.ToolTip)
                .IsUnicode(false);

            modelBuilder.Entity<ServiceType>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<ServiceType>()
                .Property(e => e.Code)
                .IsUnicode(false);

            modelBuilder.Entity<ServiceTypeGroup>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<ServiceTypeGroup>()
                .Property(e => e.Code)
                .IsUnicode(false);

            modelBuilder.Entity<ServiceTypeGroup>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<ServiceTypeGroup>()
                .HasMany(e => e.ServiceTypes)
                .WithRequired(e => e.ServiceTypeGroup)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Status>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Status>()
                .HasMany(e => e.Accounts)
                .WithRequired(e => e.Status)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Title>()
                .Property(e => e.Name)
                .IsUnicode(false);
        }
    }
}
