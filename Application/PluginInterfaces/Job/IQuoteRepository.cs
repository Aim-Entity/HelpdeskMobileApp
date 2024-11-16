using System;
using Domain.Entities.Job;

namespace Application.PluginInterfaces.Job;

public interface IQuoteRepository
{
  Task<IEnumerable<Quote>> GetAllQuotesAsync();
  Task<Quote> InsertNewQuoteAsync(Quote quote);
}
