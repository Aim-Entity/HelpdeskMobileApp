using System;
using Application.PluginInterfaces.Property;

namespace Application.Property.Queries;

public class GetAllProperties
{
  private readonly IPropertyRepository _propertyRepository;

  public GetAllProperties(IPropertyRepository propertyRepository)
  {
    _propertyRepository = propertyRepository;
  }

  public async Task<IEnumerable<Domain.Entities.Property.Property>> GetAllAsync()
  {
    return await _propertyRepository.GetAllPropertyAsync();
  }
}
