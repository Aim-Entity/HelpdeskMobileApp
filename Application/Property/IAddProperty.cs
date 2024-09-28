using Domain.Entities.Property;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.Property
{
    public interface IAddProperty
    {
        Task<Domain.Entities.Property.Property> AddNewPropertyAsync(Domain.Entities.Property.Property property);
    }
}
