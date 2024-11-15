using System;
using Domain.Entities.User;

namespace Domain.Entities.Job;

public class Request : JobAbstract
{
  public int Id { get; set; }

  public override string DetailsOfRepair { get; set; }
  public override string ContactName { get; set; }
  protected override string Telephone { get; set; }
  protected override string Email { get; set; }
  public override string Compliance { get; set; }
  public override string JobType { get; set; }
  public override int Deadline { get; set; }
  public override Property.Property Property { get; set; }
  protected override PropertyManager PropertyManager { get; set; }
  protected override Contractor Contractor { get; set; }
  protected override Surveyor Surveyor { get; set; }

  protected double MaxBid { get; set; }
  protected double CurrentBid { get; set; }
}
