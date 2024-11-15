using System;

namespace Domain.Entities.User;

public class Survey
{
  public int Id { get; set; }
  public byte[] Image { get; set; }
  public SurveyStatusEnum SurveyStatus { get; set; }
}
