using System;
using Domain.Entities.Job;

namespace Application.Job;

public interface IRequestService
{
  Task<IEnumerable<Request>> GetAllAsync();
  Task<Request> GetRequestByGuidAsync(Guid guid);
  Task<Request> InsertNewRequestAsync(Request request);
  Task<Request> UpdateRequestAsync(Request request);
}
