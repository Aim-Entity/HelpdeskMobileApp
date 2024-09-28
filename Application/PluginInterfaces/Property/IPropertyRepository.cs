using Domain.Entities.Property;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.PluginInterfaces.Property
{
    public interface IPropertyRepository
    {
        Task<IEnumerable<Domain.Entities.Property.Property>> GetPropertiesByNameAsync(string name);
        void AddProperty(int id);
    }
}
