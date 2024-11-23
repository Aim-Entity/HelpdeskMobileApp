using System;
using Application.PluginInterfaces.User;
using Domain.Entities.User;

namespace Infrastructure.InMemory.Plugins;

public class SurveyRepository : ISurveyRepository
{
  private List<Survey> _surveys;
  public SurveyRepository()
  {
    _surveys = new List<Survey>()
    {

    };
  }

  public async Task<IEnumerable<Survey>> GetAllSurveysAsync()
  {
    return _surveys;
  }

  public async Task<Survey> InsertSurveyAsync(Survey survey)
  {
    _surveys.Add(survey);
    return survey;
  }
}
