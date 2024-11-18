using System;
using Application.PluginInterfaces.User;
using Domain.Entities.User;

namespace Infrastructure.InMemory.Plugins;

public class SurveyRepository : ISurveyRepository
{
  private List<Survey> _surveys;
  public SurveyRepository()
  {

  }

  public async Task<IEnumerable<Survey>> GetAllSurveysAsync()
  {
    return _surveys;
  }
}
