using System;

namespace Domain.Entities.User;

public class Surveyor : UserAbstract
{
  public Guid Guid { get; set; } = System.Guid.NewGuid();

  public override string FullName { get; set; }
  public override ContactInfo Contact { get; set; }
  public override UserEnum User { get; set; }
  public override DateTime CreatedDate { get; set; }

  public List<Survey> Surveys { get; set; } = new List<Survey> { };

  public string UserEnumText
  {
    get
    {
      return User switch
      {
        UserEnum.Surveyor => "Surveyor",
        UserEnum.PropertyManager => "PropertyManager",
        UserEnum.Contractor => "Contractor",
        _ => ""
      };
    }
  }
}
