using Domain.Entities.Property;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain.Entities.Job
{
    abstract public class JobAbstract
    {
        public string DetailsOfRepair { get; set; }
        public string ContactName { get; set; }
        public string Telephone { get; set; }
        public string Email { get; set; }
        public string Compliance { get; set; }
        public string JobType{ get; set; }
        public int Deadline{ get; set; }
        public Property.Property Property{ get; set; }
    }
}
