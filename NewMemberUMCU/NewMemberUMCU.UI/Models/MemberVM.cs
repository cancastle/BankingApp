using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace NewMemberUMCU.UI.Models
{
    public class MemberVM
    {
        [Required]
        public bool JointAccount { get; set; }
        [Required]
        public string FirstName { get; set; }
        public string Middle { get; set; }
        [Required]
        public string LastName { get; set; }
        [Required]
        public string MMName { get; set; }
        [Required]
        public string SSN { get; set; }
        [Required]
        public DateTime DOB { get; set; }
        [Required]
        public string DLNumber { get; set; }
        [Required]
        public string DLState { get; set; }
        public int GenderID { get; set; }
        [Required]
        public string Occupation { get; set; }
        [Required]
        public int MemberAffiliationID { get; set; }
        [Required]
        public string Username { get; set; }
        [Required]
        public string Password { get; set; }
        [Required]
        public string RePassword { get; set; }
        [Required(ErrorMessage = "Please enter a valid email address")]
        [EmailAddress]
        public string Email { get; set; }
        [Required]
        [Phone]
        public string HomePhone { get; set; }
        public string MobilePhone { get; set; }
        [Required]
        public string PermanentStreetAddress { get; set; }
        [Required]
        public string PermanentCity { get; set; }
        [Required]
        public string PermanentState { get; set; }
        [Required]
        public string PermanentZip { get; set; }
        [Required]
        public string CurrentStreetAddress { get; set; }
        [Required]
        public string CurrentCity { get; set; }
        [Required]
        public string CurrentState { get; set; }
        [Required]
        public string CurrentZip { get; set; }

        public bool HasCheckCard { get; set; }
        public bool SendCheckCardToCurrentAddress { get; set; }
        public bool HasCreditCard { get; set; }
        public bool SendCreditCardToCurrentAddress { get; set; }
    }
}
