using System;
using System.Collections.Generic;
using NUnit.Framework;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NewMemberUMCU.MODELS;
using NewMemberUMCU.DATA;
using NewMemberUMCU.BLL;

namespace NewMemberUMCU.TEST
{
    [TestFixture]
    public class MemberTests
    {
        [Test]
        public void AddMember()
        {
            var memberToAdd = new Member();
            memberToAdd.JointAccount = false;
            memberToAdd.FirstName = "Johnny";
            memberToAdd.Middle = "J";
            memberToAdd.LastName = "English";
            memberToAdd.MMName = "Steinbrenner";
            memberToAdd.SSN = "555332222";
            memberToAdd.DOB = new DateTime(1970, 02, 15);
            memberToAdd.DLNumber = "MI43684439";
            memberToAdd.DLState = "MI";
            memberToAdd.GenderID = 2;
            memberToAdd.Occupation = "Secret Agent Man";
            memberToAdd.MemberAffiliationID = 3;
            memberToAdd.Username = "JEnglish";
            memberToAdd.Password = "12Regina34!";
            memberToAdd.Email = "Agent006@scotlandyard.com";
            memberToAdd.HomePhone = "3305551212";
            memberToAdd.MobilePhone = "3132051212";
            memberToAdd.CurrentStreetAddress = "317 S. Division";
            memberToAdd.CurrentCity = "Ann Arbor";
            memberToAdd.CurrentState = "MI";
            memberToAdd.CurrentZip = "48104";
            memberToAdd.PermanentStreetAddress = "10444 Bayard Rd";
            memberToAdd.PermanentCity = "Minerva";
            memberToAdd.PermanentState = "OH";
            memberToAdd.PermanentZip = "44657";
            memberToAdd.HasCheckCard = false;
            memberToAdd.HasCreditCard = false;

            var ops = new MemberOperations();
            ops.AddMember(memberToAdd);

            var repo = new MemberRepository();
            var result = repo.GetOneMember("Agent006@scotlandyard.com");

            Assert.AreEqual(result.FirstName, "Johnny");
        }
    }
}
