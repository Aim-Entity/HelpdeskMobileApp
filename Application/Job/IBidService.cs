using System;
using Domain.Entities.Job;

namespace Application.Job;

public interface IBidService
{
  Task<IEnumerable<Bid>> GetAllAsync();
  Task<Bid> GetBidByGuidAsync(Guid guid);
  Task<Bid> InsertNewBidAsync(Bid bid);
}
