using System;

namespace Domain.Entities.User;

public class HourlyRate
{
  public int Id { get; set; }
  public UserEnum User { get; set; }

  public double Rate { get; set; }
}
