using System;
using Domain.Entities.User;

namespace Application.User;

public interface ISurveyorService
{
  Task<IEnumerable<Surveyor>> GetAllSurveyorsAsync();
  Task<Surveyor> GetSurveyorByIdAsync(Guid guid);
  Task<Surveyor> AddSurvey(Surveyor surveyor, Survey survey);
}
