using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EFCoreCodeFirst.Data
{
    public class Employee
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }
        [Column(TypeName = "nvarchar(100)")]
        [Required]
        public string FirstName { get; set; }
        [Column(TypeName = "nvarchar(100)")]
        [Required]
        public string LastName { get; set; }
        [Column(TypeName = "nvarchar(100)")]
        public string Patronymic { get; set; }
        public Int64 IIN { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime DateOfBirth { get; set; }
        public bool GenderId { get; set; }
        public int? PositionId { get; set; }
        [Column(TypeName = "decimal(18, 2)")]
        public decimal Salary { get; set; }
        public Gender Gender { get; set; }
        public Position Position { get; set; }
        public List<Order> Orders { get; set; }
    }
}
