using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewMemberUMCU.MODELS
{
    public class Member
    {
        public int MemberID { get; set; }

        public bool JointAccount { get; set; }
        public int JointAccountHolderID { get; set; }

        public string FirstName { get; set; }
        public string Middle { get; set; }
        public string LastName { get; set; }
        public string MMName { get; set; }
        public string SSN { get; set; }
        public DateTime DOB { get; set; }
        public string DLNumber { get; set; }
        public string DLState { get; set; }
        public int GenderID { get; set; }
        public string Occupation { get; set; }
        public int MemberAffiliationID { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string HomePhone { get; set; }
        public string MobilePhone { get; set; }
        public string PermanentStreetAddress { get; set; }
        public string PermanentCity { get; set; }
        public string PermanentState { get; set; }
        public string PermanentZip { get; set; }
        public string CurrentStreetAddress { get; set; }
        public string CurrentCity { get; set; }
        public string CurrentState { get; set; }
        public string CurrentZip { get; set; }

        public bool HasCheckCard { get; set; }
        public bool SendCheckCardToCurrentAddress { get; set; }
        public bool HasCreditCard { get; set; }
        public bool SendCreditCardToCurrentAddress { get; set; }
    }
}
