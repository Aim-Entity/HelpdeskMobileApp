using System;
using Domain.Entities.User;

namespace Application.User;

public interface IContractorService
{
  Task<IEnumerable<Contractor>> GetAllContractorsAsync();
}
