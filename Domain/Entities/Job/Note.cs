using System;
using Domain.Entities.User;

namespace Domain.Entities.Job;

public class Note
{
  public int Id { get; set; }
  public UserEnum User { get; set; }
  public string Message { get; set; }
  public DateTime CreatedDate { get; set; } = DateTime.Now;

  public enum UserEnum
  {
    PropertyManager,
    Surveyor,
    Contractor
  }
}
