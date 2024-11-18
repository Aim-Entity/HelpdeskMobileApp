using System;
using Application.PluginInterfaces.User;
using Domain.Entities.User;
using Domain.Interface.User;

namespace Infrastructure.InMemory.Plugins;

public class HourlyRateRepository : IHourlyRateRepository
{
  private List<HourlyRate> _hourlyRates;
  public HourlyRateRepository()
  {

  }

  public async Task<IEnumerable<HourlyRate>> GetAllHourlyRatesAsync()
  {
    return _hourlyRates;
  }
}
