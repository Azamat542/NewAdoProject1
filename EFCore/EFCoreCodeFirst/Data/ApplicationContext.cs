using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFCoreCodeFirst.Data
{
    class ApplicationContext : DbContext
    {
        public DbSet<Client> Clients { get; set; }
        public DbSet<Employee> Employees { get; set; }
        public DbSet<Gender> Genders { get; set; }
        public DbSet<Goods> Goods { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<OrderDetails> OrderDetails { get; set; }
        public DbSet<Position> Positions { get; set; }
        public DbSet<Producer> Producers { get; set; }
        public ApplicationContext()
        {

        }

        protected override void OnConfiguring(DbContextOptionsBuilder dbContextOptionsBuilder)
        {
            dbContextOptionsBuilder.
                UseSqlServer(@"Server=(localdb)\MSSQLLocalDB;Database=Shop2;Trusted_Connection=True;");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder
                .Entity<Order>()
                .Property(x => x.DateOfPurchase)
                .HasDefaultValueSql("getdate()");

            modelBuilder
                .Entity<Client>()
                .HasOne(x => x.Gender)
                .WithMany(y => y.Clients)
                .OnDelete(DeleteBehavior.NoAction);

            modelBuilder
                .Entity<Employee>()
                .HasOne(x => x.Gender)
                .WithMany(y => y.Employees)
                .OnDelete(DeleteBehavior.NoAction);

            modelBuilder
             .Entity<Goods>()
             .HasOne(x => x.Producer)
             .WithMany(y => y.Goods)
             .OnDelete(DeleteBehavior.NoAction);

            modelBuilder
             .Entity<Order>()
             .HasOne(x => x.Employees)
             .WithMany(y => y.Orders)
             .OnDelete(DeleteBehavior.NoAction);

            modelBuilder
             .Entity<Order>()
             .HasOne(x => x.Clients)
             .WithMany(y => y.Orders)
             .OnDelete(DeleteBehavior.NoAction);

            modelBuilder
             .Entity<OrderDetails>()
             .HasOne(x => x.Order)
             .WithMany(y => y.OrderDetails)
             .OnDelete(DeleteBehavior.NoAction);

            modelBuilder
            .Entity<OrderDetails>()
            .HasOne(x => x.Goods)
            .WithMany(y => y.OrderDetails)
            .OnDelete(DeleteBehavior.NoAction);

            modelBuilder
                .Entity<Employee>()
                .HasOne(x => x.Position)
                .WithMany(y => y.Employees)
                .OnDelete(DeleteBehavior.NoAction);
        }
    }
}
