using Application.Common.Interfaces;
using Domain.Entities.Property;
using Microsoft.EntityFrameworkCore;
using HybridMobileProj.Hybrid.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HybridMobileProj.Hybrid.DataAccess
{
    public class AppDbContext : DbContext, IApplicationDbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            string connectionDb = $"Filename={PathDB.GetPath("test.db")}";
            optionsBuilder.UseSqlite(connectionDb);
        }


        public DbSet<Property> Properties { get; set; }
    }
}
