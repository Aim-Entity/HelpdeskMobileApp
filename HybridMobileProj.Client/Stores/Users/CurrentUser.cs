using System;
using Domain.Entities.User;
using Domain.Enums;

namespace HybridMobileProj.Client.Stores.Users;

public class Users
{
  public PropertyManager propertyManager { get; set; }
  public Contractor contractor { get; set; }
  public Surveyor surveyor { get; set; }
}

public class CurrentUser : Users
{
  public UserEnum User { get; set; } = UserEnum.PropertyManager;


  public object GetUser()
  {
    if (User == UserEnum.PropertyManager)
    {
      return propertyManager;
    }

    if (User == UserEnum.Contractor)
    {
      return contractor;
    }

    if (User == UserEnum.Surveyor)
    {
      return surveyor;
    }

    return null;
  }

  public int UserID { get; set; } = 1;

  public delegate void Notify();
  public event Notify? ChangesMade;
  public void ChangeMade()
  {
    ChangesMade?.Invoke();
  }
}
