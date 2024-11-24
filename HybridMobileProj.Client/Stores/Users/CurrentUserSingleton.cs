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

public class CurrentUserSingleton : Users
{
  public CurrentUserSingleton()
  {

  }

  private static CurrentUserSingleton _instance;
  private static readonly object _lock = new object();

  public static CurrentUserSingleton Instance()
  {
    if (_instance == null)
    {
      lock (_lock)
      {
        if (_instance == null)
        {
          _instance = new CurrentUserSingleton();
        }
      }
    }

    return _instance;
  }

  public UserEnum User { get; set; }

  public void UpdateUserType(UserEnum userEnum)
  {
    User = userEnum;
    NotifyStateChanged();
  }

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

    NotifyStateChanged();

    return null;
  }

  public int UserID { get; set; } = 1;

  public event Action OnChange; // event raised when changed
  private void NotifyStateChanged() => OnChange?.Invoke();
}
