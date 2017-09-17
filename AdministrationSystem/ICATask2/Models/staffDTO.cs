using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPI.Models
{
    public class staffDTO
    {
        public string staffCode { get; set; }
        public int staffID { get; set; }
        public int businessUnitId { get; set; }
        public string firstName { get; set; }
        public string middleName { get; set; }
        public string lastName { get; set; }

    }
}