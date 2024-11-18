using System;
using Domain.Entities.User;

namespace Application.PluginInterfaces.User;

public interface IHourlyRateRepository
{
  Task<IEnumerable<HourlyRate>> GetAllHourlyRatesAsync();
}
