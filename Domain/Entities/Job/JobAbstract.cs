using Domain.Entities.Property;
using Domain.Entities.User;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain.Entities.Job
{
    abstract public class JobAbstract
    {
        public abstract string DetailsOfRepair { get; set; }
        public abstract string ContactName { get; set; }
        protected abstract string Telephone { get; set; }
        protected abstract string Email { get; set; }
        public abstract string Compliance { get; set; }
        public abstract string JobType { get; set; }
        public abstract int Deadline { get; set; }
        public abstract Property.Property Property { get; set; }
        protected abstract PropertyManager PropertyManager { get; set; }
        protected abstract Contractor Contractor { get; set; }
        protected abstract Surveyor Surveyor { get; set; }
    }
}
