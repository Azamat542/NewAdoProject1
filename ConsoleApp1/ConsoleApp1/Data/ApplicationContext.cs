using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1.Data
{
    class ApplicationContext : DbContext
    {
        public DbSet <Clients> Clients { get; set; }

        public DbSet<Employee> Employees { get; set; }
        public DbSet<Goods> Goods { get; set; }
        public DbSet<Gender> Gender { get; set; }
        public ApplicationContext()
        {
            //Database.EnsureDeleted();
            //Database.EnsureCreated();
        }

        protected override void OnConfiguring (DbContextOptionsBuilder dbContextOptionsBuilder)
        {
            dbContextOptionsBuilder.
                UseSqlServer(
                @"Server=(localdb)\MSSQLLocalDB;
                Database=Shop2;
                Trusted_Connection=true");
        }
    }
}
