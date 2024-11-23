using System;
using Domain.Entities.Job;

namespace Application.PluginInterfaces.Job;

public interface IBidRepository
{
  Task<IEnumerable<Bid>> GetAllBidsAsync();
  Task<Bid> InsertNewBidAsync(Bid bid);
}
