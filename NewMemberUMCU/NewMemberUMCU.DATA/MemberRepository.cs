using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NewMemberUMCU.MODELS;
using Dapper;
using NewMemberUMCU.DATA.Config;

namespace NewMemberUMCU.DATA
{
    public class MemberRepository
    {
        public void AddMember(Member member)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var p = new DynamicParameters();
                p.Add("FirstName", member.FirstName);
                p.Add("Middle", member.Middle);
                p.Add("LastName", member.LastName);
                p.Add("MMName", member.MMName);
                p.Add("SSN", member.SSN);
                p.Add("DOB", member.DOB);
                p.Add("DLNumber", member.DLNumber);
                p.Add("DLState", member.DLState);
                p.Add("GenderID", member.GenderID);
                p.Add("Occupation", member.Occupation);
                p.Add("AffiliationID", member.MemberAffiliationID);
                p.Add("Username", member.Username);
                p.Add("Password", member.Password);
                p.Add("Email", member.Email);
                p.Add("HomePhone", member.HomePhone);
                p.Add("MobilePhone", member.MobilePhone);
                p.Add("PStreet", member.PermanentStreetAddress);
                p.Add("PCity", member.PermanentCity);
                p.Add("PZip", member.PermanentZip);
                p.Add("CStreet", member.CurrentStreetAddress);
                p.Add("CCity", member.CurrentCity);
                p.Add("CZip", member.CurrentZip);
                p.Add("CheckCard", member.HasCheckCard);
                p.Add("CheckCardToCurrent", member.SendCheckCardToCurrentAddress);
                p.Add("CreditCard", member.HasCreditCard);
                p.Add("CreditCardToCurrent", member.SendCreditCardToCurrentAddress);

                cn.Execute("AddMember", p, commandType: CommandType.StoredProcedure);
            }
        }

        //TODO: If it is a joint accout, after the Database creates the memberID, get that number to create the JointAccountHolder
        public void AddJointAccountHolder(Member member, JointAccountHolder jointAccountHolder)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {

            }
        }

        /* TODO: If the Member chooses a Check Card and/or a Credit Card, also include the card design
         and if the card is to be sent to the current address or not */

        //This is an inefficient way to do this, but I wanted to get a linq lambda in to show I know about it! :D
        public List<Member> GetAllMembers()
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var members = cn.Query<Member>("SELECT FROM [Member]").ToList();

                return members;
            }
        }

        public Member GetOneMember(string email)
        {
            var members = GetAllMembers();

            var member = members.FirstOrDefault(u => u.Email == email);

            return member;
        }
    }
}
