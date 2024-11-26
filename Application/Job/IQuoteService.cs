using System;
using Domain.Entities.Job;

namespace Application.Job;

public interface IQuoteService
{
  Task<IEnumerable<Quote>> GetAllAsync();
  Task<Quote> GetQuoteByGuidAsync(Guid guid);
  Task<Quote> InsertNewQuoteAsync(Quote quote);
  Task<Quote> UpdateQuoteAsync(Quote quote);
}
