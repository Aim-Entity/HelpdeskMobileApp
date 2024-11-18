using System;
using Application.PluginInterfaces.User;
using Application.User.Queries;
using Domain.Entities.User;

namespace Application.User;

public class PropertyManagerService : IPropertyManagerService
{
  private readonly IPropertyManagerRepository _propertyManagerRepository;

  public PropertyManagerService(IPropertyManagerRepository propertyManagerRepository)
  {
    _propertyManagerRepository = propertyManagerRepository;
  }

  public async Task<IEnumerable<PropertyManager>> GetAllPropertyManagersAsync()
  {
    GetAllPropertyManagers getAllPropertyManager = new GetAllPropertyManagers(_propertyManagerRepository);
    return await getAllPropertyManager.GetAllAsync();
  }

  public async Task<PropertyManager> GetPropertyManagerByIdAsync(int userId)
  {
    var result = await this.GetAllPropertyManagersAsync();
    return result.FirstOrDefault(m => m.Id == userId);
  }
}
