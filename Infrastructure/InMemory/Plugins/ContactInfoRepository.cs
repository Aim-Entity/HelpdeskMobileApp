using System;
using Application.PluginInterfaces.User;
using Domain.Entities.User;

namespace Infrastructure.InMemory.Plugins;

public class ContactInfoRepository : IContactInfoRepository
{
  private List<ContactInfo> _contactInfos;
  public ContactInfoRepository()
  {

  }

  public async Task<IEnumerable<ContactInfo>> GetAllContactInfosAsync()
  {
    return _contactInfos;
  }
}
