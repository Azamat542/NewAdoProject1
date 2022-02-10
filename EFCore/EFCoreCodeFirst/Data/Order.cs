using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFCoreCodeFirst.Data
{
    public class Order
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public int ClientId { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime DateOfPurchase { get; set; }
        public Employee Employees { get; set; }
        public Client Clients { get; set; }
        public List<OrderDetails> OrderDetails { get; set; }
    }
}
