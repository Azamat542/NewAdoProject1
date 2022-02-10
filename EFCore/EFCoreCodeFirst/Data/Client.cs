using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EFCoreCodeFirst.Data
{
    public class Client
    {
		[DatabaseGenerated(DatabaseGeneratedOption.None)]
		public int Id { get; set; }
		[Column(TypeName = "nvarchar(100)")]
		[Required]
		public string FirstName { get; set; }
		[Column(TypeName = "nvarchar(100)")]
		[Required]
		public string LastName { get; set; }
		public string Patronymic { get; set; }
		public Int64 IIN { get; set; }
		[Column(TypeName = "datetime")]
		public DateTime DateOfBirth { get; set; }
		public bool GenderId { get; set; }
		public Gender Gender { get; set; }
		public List<Order> Orders { get; set; }
	}
}
