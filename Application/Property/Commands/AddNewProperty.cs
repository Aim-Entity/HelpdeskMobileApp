using Application.PluginInterfaces.Property;
using Domain.Entities.Property;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.Property.Commands
{
    public class AddNewProperty
    {
        private readonly IPropertyRepository propertyRepository;

        public AddNewProperty(IPropertyRepository propertyRepository)
        {
            this.propertyRepository = propertyRepository;
        }

        public async Task<Domain.Entities.Property.Property> AddAsync(Domain.Entities.Property.Property property)
        {
            return await propertyRepository.InsertNewPropertyAsync(property);
        }
    }
}
