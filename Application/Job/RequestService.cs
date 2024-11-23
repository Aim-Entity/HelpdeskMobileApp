using System;
using Application.PluginInterfaces.Job;
using Domain.Entities.Job;

namespace Application.Job;

public class RequestService : IRequestService
{
  private readonly IRequestRepository _RequestRepository;

  public RequestService(IRequestRepository RequestRepository)
  {
    _RequestRepository = RequestRepository;
  }

  public async Task<IEnumerable<Request>> GetAllAsync()
  {
    return await _RequestRepository.GetAllRequestsAsync();
  }

  public async Task<Request> GetRequestByGuidAsync(Guid guid)
  {
    var result = await _RequestRepository.GetAllRequestsAsync();
    return result.FirstOrDefault(x => x.Guid == guid);
  }

  public async Task<Request> InsertNewRequestAsync(Request request)
  {
    await _RequestRepository.InsertNewRequestAsync(request);
    return request;
  }

  public async Task<Request> UpdateRequestAsync(Request request)
  {
    await _RequestRepository.UpdateRequestAsync(request);
    return request;
  }
}
