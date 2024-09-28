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
        public Domain.Entities.Property.Property Add(Domain.Entities.Property.Property dto) 
        {
            return dto;
        }
    }
}
