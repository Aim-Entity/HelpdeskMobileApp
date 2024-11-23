using System;

namespace Domain.Entities.User;

public class ContactInfo
{
  public Guid Guid { get; set; } = System.Guid.NewGuid();

  public string Email { get; set; }
  public string Telephone { get; set; }
}
