namespace HebbraCoModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BusinessUnit")]
    public partial class BusinessUnit
    {
        public BusinessUnit()
        {
            Staffs = new HashSet<Staff>();
        }

        public int businessUnitId { get; set; }

        [Required]
        [StringLength(10)]
        public string businessUnitCode { get; set; }

        [Required]
        [StringLength(50)]
        public string title { get; set; }

        public string description { get; set; }

        public string officeAddress1 { get; set; }

        public string officeAddress2 { get; set; }

        public string officeAddress3 { get; set; }

        [StringLength(10)]
        public string officePostCode { get; set; }

        public string officeContact { get; set; }

        [StringLength(50)]
        public string officePhone { get; set; }

        [StringLength(50)]
        public string officeEmail { get; set; }

        public bool Active { get; set; }
        //?

        public virtual ICollection<Staff> Staffs { get; set; }
    }
}
