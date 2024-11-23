using System;
using Domain.Entities.User;

namespace Domain.Entities.Job;

public class Note
{
  public Guid Guid { get; set; } = System.Guid.NewGuid();
  public UserEnum User { get; set; }
  public string Message { get; set; }
  public DateTime CreatedDate { get; set; } = DateTime.Now;

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
