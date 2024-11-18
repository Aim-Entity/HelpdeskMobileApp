using Application.PluginInterfaces.Property;
using Application.Property.Commands;
using Application.Property.Queries;
using Domain.Entities.Property;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.Property
{
    public class PropertyService : IPropertyService
    {
        private readonly IPropertyRepository propertyRepository;

        public PropertyService(IPropertyRepository propertyRepository)
        {
            this.propertyRepository = propertyRepository;
        }

        public async Task<Domain.Entities.Property.Property> AddNewPropertyAsync(Domain.Entities.Property.Property property)
        {
            AddNewProperty addNewProperty = new AddNewProperty(propertyRepository);
            return await addNewProperty.AddAsync(property);
        }

        public async Task<IEnumerable<Domain.Entities.Property.Property>> GetAllPropertiesAsync()
        {
            GetAllProperties getAllProperties = new GetAllProperties(propertyRepository);
            return await getAllProperties.GetAllAsync();
        }
    }
}
