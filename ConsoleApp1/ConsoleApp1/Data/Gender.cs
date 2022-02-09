using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1.Data
{
    class Gender
    {
        public bool Id { get; set; }
        [Required]
        public string Description { get; set; }

    }
}
