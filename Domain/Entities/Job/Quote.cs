using System;
using Domain.Entities.User;

namespace Domain.Entities.Job;

public class Quote : JobAbstract
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

  public Bid Bid { get; set; }

  public override JobStatusEnum JobStatus { get; set; }
  public override List<Bid> BidSelection { get; set; } = new List<Bid> { };
}
