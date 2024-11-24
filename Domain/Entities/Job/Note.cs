using System;
using Domain.Entities.User;

namespace Domain.Entities.Job;

public class Note
{
  public Guid Guid { get; set; } = System.Guid.NewGuid();
  public string Username { get; set; }
  public string Message { get; set; }
  public DateTime CreatedDate { get; set; } = DateTime.Now;

}
