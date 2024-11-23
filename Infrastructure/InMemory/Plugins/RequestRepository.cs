using System;
using Application.PluginInterfaces.Job;
using Domain.Entities.Job;

namespace Infrastructure.InMemory.Plugins;

public class RequestRepository : IRequestRepository
{
  private List<Request> _requests;
  public RequestRepository()
  {
    _requests = new List<Request>()
    {

    };
  }

  public async Task<IEnumerable<Request>> GetAllRequestsAsync()
  {
    return _requests;
  }

  public async Task<Request> InsertNewRequestAsync(Request request)
  {
    _requests.Add(request);
    return request;
  }

  public async Task<Request> UpdateRequestAsync(Request request)
  {
    var indexOf = _requests.IndexOf(_requests.Find(r => r.Guid == request.Guid));
    _requests[indexOf] = request;
    return request;
  }
}
