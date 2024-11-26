using System;
using Application.PluginInterfaces.Job;
using Domain.Entities.Job;

namespace Application.Job;

public class QuoteService
{
  private readonly IQuoteRepository _QuoteRepository;

  public QuoteService(IQuoteRepository QuoteRepository)
  {
    _QuoteRepository = QuoteRepository;
  }

  public async Task<IEnumerable<Quote>> GetAllAsync()
  {
    return await _QuoteRepository.GetAllQuotesAsync();
  }

  public async Task<Quote> GetQuoteByGuidAsync(Guid guid)
  {
    var result = await _QuoteRepository.GetAllQuotesAsync();
    return result.FirstOrDefault(x => x.Guid == guid);
  }

  public async Task<Quote> InsertNewQuoteAsync(Quote quote)
  {
    await _QuoteRepository.InsertNewQuoteAsync(quote);
    return quote;
  }

  public async Task<Quote> UpdateQuoteAsync(Quote quote)
  {
    await _QuoteRepository.UpdateQuoteAsync(quote);
    return quote;
  }
}
