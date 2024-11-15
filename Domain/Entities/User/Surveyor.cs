using System;

namespace Domain.Entities.User;

public class Surveyor : UserAbstract
{
  public int Id { get; set; }

  public override string FullName { get; set; }
  protected override ContactInfo Contact { get; set; }
  public override UserEnum User { get; set; }
  public override DateTime CreatedDate { get; set; }

  public IEnumerable<Survey> Surveys { get; set; } = Enumerable.Empty<Survey>();
}
