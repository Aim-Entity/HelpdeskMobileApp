using System;
using Domain.Entities.User;

namespace Domain.Entities.Job;

public class Request : JobAbstract
{
  public Guid Guid { get; set; } = System.Guid.NewGuid();

  public override string DetailsOfRepair { get; set; }
  public override string ContactName { get; set; }
  public override string Telephone { get; set; }
  public override string Email { get; set; }
  public override string Compliance { get; set; }
  public override string JobType { get; set; }
  public override int Deadline { get; set; }
  public override Property.Property Property { get; set; }
  public override PropertyManager PropertyManager { get; set; }
  public override Contractor Contractor { get; set; }
  public override Surveyor Surveyor { get; set; }

  public double MaxBid { get; set; }
  public Bid CurrentBid { get; set; }

  public override JobStatusEnum JobStatus { get; set; } = JobStatusEnum.PropertyManagerSection;
  public override List<Bid> BidSelection { get; set; } = new List<Bid> { };
}
