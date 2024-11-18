using System;
using Application.PluginInterfaces.User;
using Domain.Entities.User;
using Domain.Enums;

namespace Infrastructure.InMemory.Plugins;

public class PropertyManagerRepository : IPropertyManagerRepository
{
  private List<PropertyManager> _propertyManagers;
  public PropertyManagerRepository()
  {
    _propertyManagers = new List<PropertyManager>()
    {
        new PropertyManager { Id = 1, FullName = "Bilal Manager", User = UserEnum.PropertyManager}
    };
  }

  public async Task<IEnumerable<PropertyManager>> GetAllPropertyManagersAsync()
  {
    return _propertyManagers;
  }
}
