using System;
using System.ComponentModel.DataAnnotations;

namespace Infra70533webapp.Models
{
    public class InfraNote
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Note { get; set; }

        [Display(Name = "Created Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime CreatedDate { get; set; }
    }
}