using System;
using Application.PluginInterfaces.User;
using Domain.Entities.User;
using Domain.Enums;

namespace Infrastructure.InMemory.Plugins;

public class ContractorRepository : IContractorRepository
{
  private List<Contractor> _contractors;
  public ContractorRepository()
  {
    _contractors = new List<Contractor>()
    {
        new Contractor { Guid = new Guid(), FullName = "Bilal Contractor", User = UserEnum.Contractor}
    };
  }

  public async Task<IEnumerable<Contractor>> GetAllContractorsAsync()
  {
    return _contractors;
  }
}
