using System;

namespace Domain.Entities.User;

abstract public class UserAbstract
{
  public abstract string FullName { get; set; }
  protected abstract ContactInfo Contact { get; set; }
  public abstract UserEnum User { get; set; }
  public abstract DateTime CreatedDate { get; set; }

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
