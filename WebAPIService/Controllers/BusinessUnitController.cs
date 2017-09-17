using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using HebbraCoModel;

namespace WebAPI.Controllers
{

    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class BusinessUnitController : ApiController
    {

        /// <summary>
        /// List of Business Units
        ///Staff List by Business Unit
        ///Staff Details by Staff Identifier
        /// </summary>
        /// 
        /// //Links the database
        HebbraCoModel.ModelHebbraCo efdb = new ModelHebbraCo();

        // GET: api/BusinessUnit

        #region MockMethods
        //This method is used to get all items in the Mock Model database.
        //public IEnumerable<MockModel.BusinessUnit> Get()
        //{
        //    //
        //    var all = db.All(); //stores all items in the DB in a var.
        //    return all; //returns all.
        //}

        //// GET: api/BusinessUnit/5

        ////This method is used to find a business unit, feeding an int into the method.
        //public MockModel.BusinessUnit Get(int id) //int fed in.
        //{
        //    var bu = db.Find(id); //Searches the database for an item with corresponding id 
        //    return bu; //returns the aforementioned business unit
        //}

        #endregion


        #region RealMethods

        public IEnumerable<HebbraCoModel.BusinessUnit> Get()
        {

            var all = efdb.BusinessUnits.Where(b => b.Active); //stores all items in the DB in a var.
            return all; //returns all.
        }

        // GET: api/BusinessUnit/5

        //This method is used to find a business unit, feeding an int into the method.
        public HebbraCoModel.BusinessUnit Get(String businessUnitCode) //int fed in.
        {
            //var bu = e.Find(id); //Searches the database for an item with corresponding id
            var bu = efdb.BusinessUnits.Where(b => b.businessUnitCode == businessUnitCode).SingleOrDefault();
            return bu; //returns the aforementioned business unit
        }

        public BusinessUnit Find(String businessUnitCode)
        {
            var allBu = efdb.BusinessUnits.Where(b => b.Active);
            BusinessUnit bu = allBu.Where(x => x.businessUnitCode == businessUnitCode).SingleOrDefault();
            return bu;
        }


        #endregion


    }
}
