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
        public abstract string Telephone { get; set; }
        public abstract string Email { get; set; }
        public abstract string Compliance { get; set; }
        public abstract string JobType { get; set; }
        public abstract int Deadline { get; set; }
        public abstract Property.Property Property { get; set; }
        public abstract PropertyManager PropertyManager { get; set; }
        public abstract Contractor Contractor { get; set; }
        public abstract Surveyor Surveyor { get; set; }

        public abstract JobStatusEnum JobStatus { get; set; }
        public abstract List<Bid> BidSelection { get; set; }

        public string JobStatusText
        {
            get
            {
                return JobStatus switch
                {
                    JobStatusEnum.Pending => "Pending",
                    JobStatusEnum.SurveyorManagerSection => "Surveyor Manager",
                    JobStatusEnum.ContractorManagerSection => "Contractor Manager",
                    JobStatusEnum.PropertyManagerSection => "Property Manager",
                    JobStatusEnum.Complete => "Complete",
                    _ => ""
                };
            }
        }
    }
}
