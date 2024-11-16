using System;
using Azure.Core;

namespace Application.PluginInterfaces.Job;

public interface IRequestRepository
{
  Task<IEnumerable<Request>> GetAllRequestsAsync();
  Task<Request> InsertNewRequestAsync(Request request);
}
