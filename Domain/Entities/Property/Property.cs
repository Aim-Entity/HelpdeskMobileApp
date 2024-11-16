using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;
namespace Domain.Entities.Property
{
    public class Property
    {
        [Key]
        public int Id { get; set; }
        public string PropertyName { get; set; }
        public string Address1 { get; set; } = string.Empty;
        public string Address2 { get; set; } = string.Empty;
        public string Address3 { get; set; } = string.Empty;
        public string Address4 { get; set; } = string.Empty;
        public string Postcode { get; set; } = string.Empty;

        public UserEnum Manager { get; set; }

        public string UserEnumText
        {
            get
            {
                return Manager switch
                {
                    UserEnum.Surveyor => "Surveyor",
                    UserEnum.PropertyManager => "PropertyManager",
                    UserEnum.Contractor => "Contractor",
                    _ => ""
                };
            }
        }
    }
}
