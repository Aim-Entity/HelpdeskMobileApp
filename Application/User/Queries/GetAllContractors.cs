using System;
using Application.PluginInterfaces.User;
using Domain.Entities.User;

namespace Application.User.Queries;

public class GetAllContractors
{
  private readonly IContractorRepository _contractorRepository;

  public GetAllContractors(IContractorRepository contractorRepository)
  {
    _contractorRepository = contractorRepository;
  }

  public async Task<IEnumerable<Contractor>> GetAllAsync()
  {
    return await _contractorRepository.GetAllContractorsAsync();
  }
}
