using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.Helpers;
using System.Net.Http;
using System.Net.Http.Formatting;
using NewMemberUMCU.BLL;
using NewMemberUMCU.MODELS;
using NewMemberUMCU.UI.Models;
using AutoMapper;

namespace NewMemberUMCU.UI.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Application()
        {
            
            return View();
        }

        /// <summary>
        /// Create a new Member
        /// </summary>
        /// <param name="memberModel"></param>
        /// <returns></returns>
        /// 
        //[HttpPost]
        //public ActionResult Post(MemberVM memberVM)
        //{
        //    //Validate the viewmodel

        //    //Transform the domainmodel based on what comes in from viewmodel

        //    var member = new Member();
        //    {
        //        //transfer to the domain model data from view model data here, or use AutoMapper!
        //    }
        //    return View("Index");
        //}


        [HttpPost]
        public ActionResult Post(MemberVM memberModel)
        {
            //TODO: Validate the ViewModel
            //using AutoMapper to hook VM to Model
            var config = new MapperConfiguration(cfg => { cfg.CreateMap<NewMemberUMCU.UI.Models.MemberVM, NewMemberUMCU.MODELS.Member>(); });

            IMapper mapper = config.CreateMapper();
            var source = new MemberVM();
            var dest = mapper.Map<NewMemberUMCU.UI.Models.MemberVM, NewMemberUMCU.MODELS.Member>(source);

            var ops = new MemberOperations();
            ops.AddMember(dest);

            return View("ThankYou");
        }



    }
}