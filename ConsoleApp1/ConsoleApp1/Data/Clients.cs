using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1.Data
{
    class Clients
    {
        public int Id { get; set; }
        [Required]
        public string FirstName { get; set; }
        [Required]
        public string LastName { get; set; }
        public string Patronymic { get; set; }
        public int Iin { get; set; }
        public DateTime DateOfBirht { get; set; }
        public bool GenderId { get; set; } 
        public Gender Gender { get; set; }///Навигационное свойтсво

    }
}
