using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NewMemberUMCU.DATA;
using NewMemberUMCU.MODELS;


namespace NewMemberUMCU.BLL
{
    public class MemberOperations
    {
        public Response<string> AddMember(Member member)
        {
            var repo = new MemberRepository();
            var response = new Response<string>();
            repo.AddMember(member);

            try
            {
                response.Success = true;
                response.Message = "Member has been added";
            }
            catch (Exception ex)
            {
                response.Success = false;
                response.Message = ex.Message;
            }

            return response;
        }
    }
}
