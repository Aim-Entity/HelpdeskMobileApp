using System;
using Domain.Entities.User;

namespace Application.PluginInterfaces.User;

public interface IPropertyManagerRepository
{
  Task<IEnumerable<PropertyManager>> GetAllPropertyManagersAsync();
  Task<PropertyManager> InsertNewPropertyManagerAsync(PropertyManager propertyManager);
}
