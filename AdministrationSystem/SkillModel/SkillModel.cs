namespace SkillModel
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class SkillModel : DbContext
    {
        public SkillModel()
            : base("name=Skills")
        {
        }

        public virtual DbSet<Skill> Skills { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Skill>()
                .Property(e => e.StaffSkillsId)
                .IsUnicode(false);

            modelBuilder.Entity<Skill>()
                .Property(e => e.StaffCode)
                .IsUnicode(false);

            modelBuilder.Entity<Skill>()
                .Property(e => e.SkillCode)
                .IsUnicode(false);
        }
    }
}
