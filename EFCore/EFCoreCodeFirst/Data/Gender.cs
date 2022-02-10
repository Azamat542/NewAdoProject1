using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace EFCoreCodeFirst.Data
{
    public class Gender
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public bool Id { get; set; }
        [Column(TypeName = "nvarchar(15)")]
        [Required]
        public string Description { get; set; }
        public List<Client> Clients { get; set; }
        public List<Employee> Employees { get; set; }
    }
}
