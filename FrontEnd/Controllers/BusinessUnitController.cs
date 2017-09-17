using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;

namespace FrontEnd.Controllers
{

    public class buDTO
    {
        public string Title {get; set;}
        public string businessUnitCode { get; set; }
        
    }

    public class BusinessUnitController : Controller
    {
        //
        // GET: /BusinessUnit/
        public ActionResult Index()
        {
            HttpClient buClient = new HttpClient();
            buClient.BaseAddress = new System.Uri("http://localhost:33103/");
            buClient.DefaultRequestHeaders.Accept.ParseAdd("application/json");
            HttpResponseMessage response = buClient.GetAsync("api/BusinessUnit").Result;

            if(response.IsSuccessStatusCode)
            {
                var bu = response.Content.ReadAsAsync<IEnumerable<FrontEnd.Controllers.buDTO>>().Result;
                return View(bu);
            }
            return View();
        }
    }
}
