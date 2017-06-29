using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SADFM.Web.Models
{
   

    public class ManageUserViewModel
    {
        [DataType(DataType.Text)]
        [Display(Name = "Username")]
        [Compare("Username", ErrorMessage = "The Username field is required.")]
        public string Username { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Current password")]
        public string OldPassword { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "New password")]
        public string NewPassword { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm new password")]
        [Compare("NewPassword", ErrorMessage = "The new password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Text)]
        [Display(Name = "Security Question")]
        public string SecurityQuestion { get; set; }

         [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Text)]
        [Display(Name = "Security Answer")]
        public string SecurityAnswer { get; set; }

         public Guid SecurityQuestionId { get; set; }
         public string SecurityQuestionAnswer { get; set; }
         public bool Agree { get; set; }
         public Guid AccountId { get; set; }
         public bool ConfirmAgree { get; set; }
         public bool MultipleProviderMember { get; set; }
         public Guid ProviderId { get; set; }
         public Guid AcuityTypeId { get; set; }
         public Guid ProviderAccountPermissionId { get; set; }
    }

     public class ForgotPasswordViewModel
     {

         [DataType(DataType.Text)]
         [Display(Name = "Username")]
         [Compare("Username", ErrorMessage = "The Username field is required.")]
         public string Username { get; set; }
        

       
     }

}