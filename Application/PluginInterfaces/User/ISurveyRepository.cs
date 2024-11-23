using System;
using Domain.Entities.User;

namespace Application.PluginInterfaces.User;

public interface ISurveyRepository
{
  Task<IEnumerable<Survey>> GetAllSurveysAsync();
  Task<Survey> InsertSurveyAsync(Survey survey);
}
