using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EFCoreCodeFirst.Data
{
    public class Goods
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }
        [Column(TypeName = "nvarchar(500)")]
        [Required]
        public string Name { get; set; }
        public int ProducerId { get; set; }
        [Column(TypeName = "decimal(18, 2)")]
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public Producer Producer { get; set; }
        public List<OrderDetails> OrderDetails { get; set; }
    }
}
