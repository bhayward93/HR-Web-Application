using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FrontEnd.Controllers
{
    public class SkillsDTO
    {
        [Key]
        public string skillCode { get; set; }
        public string skillDescription { get; set; }
    }

    public class SkillsController : Controller
    {



        private SkillService.SkillServiceClient WCFClient = new SkillService.SkillServiceClient();
        

       
      
        public ActionResult ShowSkills()
        {
            var skills = WCFClient.GetAllSkills();
            return View(skills);
        }



    }
}
