using System;
using Application.PluginInterfaces.User;
using Domain.Entities.User;

namespace Application.User.Queries;

public class GetAllPropertyManagers
{
  private readonly IPropertyManagerRepository _PropertyManagerRepository;

  public GetAllPropertyManagers(IPropertyManagerRepository PropertyManagerRepository)
  {
    _PropertyManagerRepository = PropertyManagerRepository;
  }

  public async Task<IEnumerable<PropertyManager>> GetAllAsync()
  {
    return await _PropertyManagerRepository.GetAllPropertyManagersAsync();
  }
}
