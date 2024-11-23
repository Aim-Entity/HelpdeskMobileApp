using System;

namespace Domain.Entities.User;

public class HourlyRate
{
  public Guid Guid { get; set; } = System.Guid.NewGuid();

  public UserEnum User { get; set; }

  public double Rate { get; set; }

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
