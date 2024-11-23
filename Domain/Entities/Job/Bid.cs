using System;
using Domain.Entities.User;

namespace Domain.Entities.Job;

public class Bid
{
  public Guid Guid { get; set; } = System.Guid.NewGuid();
  public double CurrentBid { get; set; }

  public Contractor Contractor { get; set; }
}
