using System;
using Domain.Entities.User;

namespace Application.PluginInterfaces.User;

public interface IContractorRepository
{
  Task<IEnumerable<Contractor>> GetAllContractorsAsync();
  Task<Contractor> InsertNewContractorAsync(Contractor contractor);
}
