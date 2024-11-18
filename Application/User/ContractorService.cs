using System;
using Application.PluginInterfaces.User;
using Application.User.Queries;
using Domain.Entities.User;

namespace Application.User;

public class ContractorService : IContractorService
{
  private readonly IContractorRepository _contractorRepository;

  public ContractorService(IContractorRepository contractorRepository)
  {
    _contractorRepository = contractorRepository;
  }

  public async Task<IEnumerable<Contractor>> GetAllContractorsAsync()
  {
    GetAllContractors getAllContractors = new GetAllContractors(_contractorRepository);
    return await getAllContractors.GetAllAsync();
  }
}
