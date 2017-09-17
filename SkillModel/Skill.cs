namespace SkillModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Skill
    {
        [Key]
        [StringLength(50)]
        public string StaffSkillsId { get; set; }

        [StringLength(50)]
        public string StaffCode { get; set; }

        [Required]
        [StringLength(50)]
        public string SkillCode { get; set; }
    }
}
