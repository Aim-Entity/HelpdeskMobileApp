using System;

namespace Domain.Entities.User;

public class Contractor : UserAbstract
{
  public int Id { get; set; }

  public override string FullName { get; set; }
  protected override ContactInfo Contact { get; set; }
  public override UserEnum User { get; set; }
  public override DateTime CreatedDate { get; set; }

  public string ServiceType { get; set; }
  public string ServiceName { get; set; }
}
