using System;

namespace Application.Property;

public interface IPropertyService
{
  Task<Domain.Entities.Property.Property> AddNewPropertyAsync(Domain.Entities.Property.Property property);
  Task<IEnumerable<Domain.Entities.Property.Property>> GetAllPropertiesAsync();
}
