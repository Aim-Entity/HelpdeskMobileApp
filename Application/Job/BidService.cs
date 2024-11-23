using System;
using Application.PluginInterfaces.Job;
using Domain.Entities.Job;

namespace Application.Job;

public class BidService : IBidService
{
  private readonly IBidRepository _BidRepository;

  public BidService(IBidRepository BidRepository)
  {
    _BidRepository = BidRepository;
  }

  public async Task<IEnumerable<Bid>> GetAllAsync()
  {
    return await _BidRepository.GetAllBidsAsync();
  }

  public async Task<Bid> GetBidByGuidAsync(Guid guid)
  {
    var result = await _BidRepository.GetAllBidsAsync();
    return result.FirstOrDefault(x => x.Guid == guid);
  }

  public async Task<Bid> InsertNewBidAsync(Bid bid)
  {
    await _BidRepository.InsertNewBidAsync(bid);
    return bid;
  }
}
