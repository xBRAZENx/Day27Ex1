using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebAppDay27Ex1.Models
{
    [Table("Course")]
    public class Course
    {
        [Key]
        public int CId { get; set; }
        public string CName { get; set; }
        public float CFee { get; set; }
        public string Status { get; set; }
        public string Technology { get; set; }

    }
}
