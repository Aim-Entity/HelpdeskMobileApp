using System;
using Application.PluginInterfaces.User;
using Application.User.Queries;
using Domain.Entities.User;

namespace Application.User;

public class SurveyorService : ISurveyorService
{
  private readonly ISurveyorRepository _surveyorRepository;

  public SurveyorService(ISurveyorRepository surveyorRepository)
  {
    _surveyorRepository = surveyorRepository;
  }

  public async Task<IEnumerable<Surveyor>> GetAllSurveyorsAsync()
  {
    GetAllSurveyors getAllSurveyors = new GetAllSurveyors(_surveyorRepository);
    return await getAllSurveyors.GetAllAsync();
  }

  public async Task<Surveyor> GetSurveyorByIdAsync(Guid guid)
  {
    GetAllSurveyors getAllSurveyors = new GetAllSurveyors(_surveyorRepository);
    var result = await getAllSurveyors.GetAllAsync();
    return result.FirstOrDefault(r => r.Guid == guid);
  }

  public async Task<Surveyor> AddSurvey(Surveyor surveyor, Survey survey)
  {
    surveyor.Surveys.Add(survey);
    return surveyor;
  }
}
