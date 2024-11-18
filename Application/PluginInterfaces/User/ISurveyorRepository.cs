using System;
using Domain.Entities.User;

namespace Application.PluginInterfaces.User;

public interface ISurveyorRepository
{
  Task<IEnumerable<Surveyor>> GetAllSurveyorsAsync();
}
