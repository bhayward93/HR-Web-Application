using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net.Http;


namespace FrontEnd.Controllers
{ //testing
    //http://localhost:64140/Staff?buCode=Analytical%20services
    //http://localhost:64140/BusinessUnit/Index

    public class staffDTO
    {
        public string businessUnitId {get; set;}
        public string firstName {get; set;}
        public string lastName {get; set;}
        public string middleName {get; set;}
        public string staffID { get; set; }
        public string staffCode { get; set; }
    }

    public class StaffController : Controller
    {
        
        SkillModel.SkillModel skilldb = new SkillModel.SkillModel();
        private SkillService.SkillServiceClient WCFClient = new SkillService.SkillServiceClient();

        // GET: /Staff/
        public ActionResult Index(string buCode)
        {
            buCode = buCode.Trim();//buvode returning whitespace at the end for no apparent reason, used .trim
            HttpClient sClient = new HttpClient();
            sClient.BaseAddress = new System.Uri("http://localhost:33103/");
            sClient.DefaultRequestHeaders.Accept.ParseAdd("application/json");
            HttpResponseMessage response = sClient.GetAsync("api/Staff/BusinessUnit/"+buCode).Result; 
            if (response.IsSuccessStatusCode)
            {
                var staff = response.Content.ReadAsAsync<IEnumerable<staffDTO>>().Result; //FUCKS UP HERE, 
                return View(staff);
            }
            return View();
        }



            public ActionResult Skills(string staffCode)
            {
                var thisStaffSkills = skilldb.Skills.Where(s => s.StaffCode == staffCode).ToList();
                var vm = thisStaffSkills.Select(c => new SkillModel.Skill
                {
                    SkillCode = c.SkillCode,
                    StaffCode = c.StaffCode
                }).ToList();
                return View(vm);
            }
            
       
            public ActionResult AddSkill(string staffCode)
            {
                var skills = WCFClient.GetAllSkills();
                var allSkillsCode = (from s in skills select s.skillCode).ToList();
                var thisStaffSkillsCode = (from s in skilldb.Skills where s.StaffCode == staffCode select s.SkillCode).ToList();
                var yetToHave = allSkillsCode.Except(thisStaffSkillsCode);
                List<SkillsDTO> list = buildSkillList(skills, yetToHave);
                ViewBag.skillCode = new SelectList(list, "skillCode", "skillDescription");
                var model = new SkillModel.Skill { StaffCode = staffCode };
                return View("AddSkill", model);
            }

            [HttpPost]
            public ActionResult AddSkill(SkillModel.Skill model)
            {
                skilldb.Skills.Add(model);
                skilldb.SaveChanges();

                return RedirectToAction("Skills", new { StaffCode = model.StaffCode });

            }

        public List<SkillsDTO> buildSkillList(List<SkillsDTO> skills, List<SkillsDTO> yetToHave)
        {
            //TODO: Not Yet Implemented
            return null;
        }



    }
}