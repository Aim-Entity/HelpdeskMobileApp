using System;
using Application.PluginInterfaces.User;
using Domain.Entities.User;

namespace Application.User.Queries;

public class GetAllSurveyors
{
  private readonly ISurveyorRepository _SurveyorRepository;

  public GetAllSurveyors(ISurveyorRepository SurveyorRepository)
  {
    _SurveyorRepository = SurveyorRepository;
  }

  public async Task<IEnumerable<Surveyor>> GetAllAsync()
  {
    return await _SurveyorRepository.GetAllSurveyorsAsync();
  }
}
