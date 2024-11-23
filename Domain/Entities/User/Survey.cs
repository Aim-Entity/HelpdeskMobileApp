using System;

namespace Domain.Entities.User;

public class Survey
{
  public Guid Guid { get; set; } = System.Guid.NewGuid();
  public string Image { get; set; }
  public DateTime CreatedDate { get; set; } = DateTime.Now;
}
