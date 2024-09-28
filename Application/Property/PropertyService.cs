using Application.PluginInterfaces.Property;
using Application.Property.Commands;
using Domain.Entities.Property;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.Property
{
    public class PropertyService: IAddProperty, IFilterProperty
    {
        private readonly IPropertyRepository propertyRepository;

        public PropertyService(IPropertyRepository propertyRepository)
        {
            this.propertyRepository = propertyRepository;
        }

        public async Task<Domain.Entities.Property.Property> AddNewPropertyAsync(Domain.Entities.Property.Property property)
        {
            AddNewProperty addNewProperty = new AddNewProperty();
            return addNewProperty.Add(property);
        }
        /*
        public async Task<IEnumerable<PropertyDTO>> GetPropertiesByNameAsync(string name = "")
        {
            return NotImplementedException;
        }
        public async Task<IEnumerable<PropertyDTO>> GetAllPropertiesAsync(string name = "")
        {
            return NotImplementedException;
        }
        */

    }
}
