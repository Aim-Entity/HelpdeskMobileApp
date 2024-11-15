using System;

namespace Domain.Entities.User;

public class ContactInfo
{
  public int Id { get; set; }

  protected string Email { get; set; }
  protected string Telephone { get; set; }
}
