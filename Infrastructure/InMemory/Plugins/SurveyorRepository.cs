using System;
using Application.PluginInterfaces.User;
using Domain.Entities.User;
using Domain.Enums;

namespace Infrastructure.InMemory.Plugins;

public class SurveyorRepository : ISurveyorRepository
{
  private List<Surveyor> _surveyors;
  public SurveyorRepository()
  {
    _surveyors = new List<Surveyor>()
    {
        new Surveyor { Guid = new Guid(), FullName = "Bilal Surveyor", User = UserEnum.Surveyor}
    };
  }

  public async Task<IEnumerable<Surveyor>> GetAllSurveyorsAsync()
  {
    return _surveyors;
  }
}
