using System;
using Domain.Entities.User;

namespace Application.User;

public interface IPropertyManagerService
{
  Task<IEnumerable<PropertyManager>> GetAllPropertyManagersAsync();
  Task<PropertyManager> GetPropertyManagerByIdAsync(Guid guid);
}
