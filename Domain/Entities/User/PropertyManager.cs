using System;

namespace Domain.Entities.User;

public class PropertyManager : UserAbstract
{
  public Guid Guid { get; set; } = System.Guid.NewGuid();

  public override string FullName { get; set; }
  public override ContactInfo Contact { get; set; }
  public override UserEnum User { get; set; }
  public override DateTime CreatedDate { get; set; } = DateTime.Now;

  public IEnumerable<Domain.Entities.Property.Property> Properties { get; set; } = Enumerable.Empty<Domain.Entities.Property.Property>();

  public string UserEnumText
  {
    get
    {
      return User switch
      {
        UserEnum.Surveyor => "Surveyor",
        UserEnum.PropertyManager => "PropertyManager",
        UserEnum.Contractor => "Contractor",
        _ => ""
      };
    }
  }
}
