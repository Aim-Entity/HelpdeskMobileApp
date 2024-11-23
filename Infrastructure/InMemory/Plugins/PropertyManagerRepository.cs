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
        new PropertyManager { Guid = new Guid(), FullName = "Bilal Manager", User = UserEnum.PropertyManager, Contact = new ContactInfo{ Telephone = "123 456 789", Email = "TestEmail@gmail.com"}}
    };
  }

  public async Task<IEnumerable<PropertyManager>> GetAllPropertyManagersAsync()
  {
    return _propertyManagers;
  }
}
