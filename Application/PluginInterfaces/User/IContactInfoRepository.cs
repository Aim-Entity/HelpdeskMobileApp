using System;
using Domain.Entities.User;

namespace Application.PluginInterfaces.User;

public interface IContactInfoRepository
{
  Task<IEnumerable<ContactInfo>> GetAllContactInfosAsync();
}
