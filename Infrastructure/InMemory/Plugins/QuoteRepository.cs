using System;
using Application.PluginInterfaces.Job;
using Domain.Entities.Job;

namespace Infrastructure.InMemory.Plugins;

public class QuoteRepository : IQuoteRepository
{
  private List<Quote> _quotes;
  public QuoteRepository()
  {
    _quotes = new List<Quote>()
    {

    };
  }

  public async Task<IEnumerable<Quote>> GetAllQuotesAsync()
  {
    return _quotes;
  }

  public async Task<Quote> InsertNewQuoteAsync(Quote quote)
  {
    _quotes.Add(quote);
    return quote;
  }

  public async Task<Quote> UpdateQuoteAsync(Quote quote)
  {
    var indexOf = _quotes.IndexOf(_quotes.Find(r => r.Guid == quote.Guid));
    _quotes[indexOf] = quote;
    return quote;
  }
}
