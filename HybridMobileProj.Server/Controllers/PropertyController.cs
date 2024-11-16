using System;
using Application.Property;
using HybridMobileProj.Client.Pages;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace HybridMobileProj.Server.Controllers;

public class PropertyController : ApiBaseController
{
  private readonly IPropertyService _propertyService;

  public PropertyController(IPropertyService propertyService)
  {
    _propertyService = propertyService;
  }

  [HttpGet("GetAllProperties")]
  public async Task<ActionResult<IEnumerable<Properties>>> GetAllProperties()
  {
    var properties = await _propertyService.GetAllPropertiesAsync();
    return Ok(properties);
  }
}
