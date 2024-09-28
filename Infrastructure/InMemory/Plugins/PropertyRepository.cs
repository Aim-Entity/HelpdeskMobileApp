using Application.PluginInterfaces.Property;
using Domain.Entities.Property;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure.InMemory.Plugins
{
    public class PropertyRepository : IPropertyRepository
    {
        private List<Property> _properties;
        public PropertyRepository()
        {
            _properties = new List<Property>()
            {
                new Property { Id = 1, PropertyName = "Test Property 1", Address1 = "Address", Address2 = "Address 2", Postcode = "BDBD 22" },
                new Property { Id = 2, PropertyName = "Test Property 2", Address1 = "Address", Address2 = "Address 2", Postcode = "BDBD 22" },
                new Property { Id = 3, PropertyName = "Test Property 3", Address1 = "Address", Address2 = "Address 2", Postcode = "BDBD 22" },
            };
        }

        public async Task<IEnumerable<Property>> GetPropertiesByNameAsync(string name)
        {
            if (string.IsNullOrEmpty(name))
            {
                return await Task.FromResult(_properties);
            }

            return _properties.Where(x => x.PropertyName.Contains(name, StringComparison.OrdinalIgnoreCase));
        }

        public void AddProperty(int id)
        {
            _properties.Add(new Property { Id = id, PropertyName = "New Prop", Address1 = "Address", Address2 = "Address 2" });
        }
    }
}
