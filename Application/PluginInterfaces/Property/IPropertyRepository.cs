using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain.Entities.Property;

namespace Application.PluginInterfaces.Property
{
    public interface IPropertyRepository
    {
        Task<IEnumerable<Domain.Entities.Property.Property>> GetAllPropertyAsync();
        Task<Domain.Entities.Property.Property> InsertNewPropertyAsync(Domain.Entities.Property.Property property);
    }
}
