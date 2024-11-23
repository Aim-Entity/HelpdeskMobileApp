using System;
using Application.PluginInterfaces.Job;
using Domain.Entities.Job;

namespace Infrastructure.InMemory.Plugins;

public class BidRepository : IBidRepository
{
  private List<Bid> _bids;
  public BidRepository()
  {
    _bids = new List<Bid>()
    {

    };
  }

  public async Task<IEnumerable<Bid>> GetAllBidsAsync()
  {
    return _bids;
  }

  public async Task<Bid> InsertNewBidAsync(Bid bid)
  {
    _bids.Add(bid);
    return bid;
  }
}
