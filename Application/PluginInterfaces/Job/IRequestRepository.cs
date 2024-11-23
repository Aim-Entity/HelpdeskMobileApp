using System;
using Domain.Entities.Job;

namespace Application.PluginInterfaces.Job;

public interface IRequestRepository
{
  Task<IEnumerable<Request>> GetAllRequestsAsync();
  Task<Request> InsertNewRequestAsync(Request request);
  Task<Request> UpdateRequestAsync(Request request);
}
