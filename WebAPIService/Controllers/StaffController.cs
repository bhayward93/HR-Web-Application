using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using HebbraCoModel;
using WebAPI.Models;

namespace WebAPI.Controllers
{
    /// <summary>
    /// This uses attribute based routing
    /// http://www.asp.net/web-api/overview/web-api-routing-and-actions/attribute-routing-in-web-api-2
    /// </summary>

    [EnableCors(origins: "*", headers: "*", methods: "*")]
    [RoutePrefix("api/Staff")]

    //CURRENTLY WORKING ON THE GETSTAFFBYBUSINESSUNIT METHOD
    public class StaffController : ApiController
    {
        
        //HebbraCoModel.Staff staffData = new HebbraCoModel.Staff(); //Importing the staff 
        //HebbraCoModel.BusinessUnit buData = new HebbraCoModel.BusinessUnit(); //importing businesses
        // GET: [Route("customers/{customerId}/orders")]
        HebbraCoModel.ModelHebbraCo dB = new HebbraCoModel.ModelHebbraCo();

        [Route("BusinessUnit/{buCode}")] //When url businessUnit/(a title) is accessed. e.g. http://localhost:33103/api/staff/BusinessUnit/RaPrBu
        public IEnumerable<Models.staffDTO> GetStaffByBuisnessUnit(string buCode)
        {
            
            //var bu = dB.BusinessUnits.Where(b => b.Active); //creates a collection of all business units
            var thisBu = dB.BusinessUnits.Where(b => b.Active == true && b.businessUnitCode == buCode).SingleOrDefault(); //Creates a second variable of business units where the title matches the one fed into the method.

            if (thisBu != null)
            {
                //var allStaff = dB.Staffs.Where(s => s.Active); //Pulls in all staff
                var theseStaff = dB.Staffs.Where(s => s.Active == true && s.businessUnitId == thisBu.businessUnitId);
                    //Creates a second variable for staff, where the staffs buid = the business unit ID of the business fed in.

                var dto = theseStaff.Select(s => new Models.staffDTO
                {
                    staffCode = s.staffCode,
                    staffID = s.staffId,
                    businessUnitId = s.businessUnitId,
                    firstName = s.firstName,
                    middleName = s.middleName,
                    lastName = s.lastName
                }).ToList();

                return dto; //Returns the staff belonging to various businesses
            }
            return null;
        }

  

        [Route("{staffCode}")] // when a name is entered

        //Gets staff by a name fed into the method
        public HebbraCoModel.Staff GetStaffByName(string staffCode)
        {
            var allStaff = dB.Staffs.Where(s => s.Active);
            var theseStaff = allStaff.Where(s => s.staffCode == staffCode).SingleOrDefault(); // creates a second collection of staff, but only ones with names matching the one fed into the method
            return theseStaff; //returns all staff defined in the 2nd variable theseStaff
        }


       
    }
}
