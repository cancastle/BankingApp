using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace NewMemberUMCU.UI.Models
{
    public class JointVM
    {
        public int MemberID { get; set; }
        [Required]
        public string FirstName { get; set; }
        public string Middle { get; set; }
        [Required]
        public string LastName { get; set; }
        [Required]
        public string PermanentStreet { get; set; }
        [Required]
        public string PermanentState { get; set; }
        [Required]
        public string PermanentZip { get; set; }
        [Required]
        public string HomePhone { get; set; }
        public string MobilePhone { get; set; }
        [Required]
        [EmailAddress]
        public string Email { get; set; }
    }
}
