using Application.PluginInterfaces.Job;
using Application.PluginInterfaces.Property;
using Application.PluginInterfaces.User;
using Application.Property;
using HybridMobileProj.Client.Stores.Users;
using Infrastructure.InMemory.Plugins;
using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;

var builder = WebAssemblyHostBuilder.CreateDefault(args);
builder.RootComponents.Add<HybridMobileProj.Client.App>("#app");
builder.RootComponents.Add<HeadOutlet>("head::after");

CurrentUserSingleton CurrentUser = CurrentUserSingleton.Instance();


builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(builder.HostEnvironment.BaseAddress) });
builder.Services.AddSingleton<IPropertyRepository, PropertyRepository>();
builder.Services.AddSingleton<IPropertyManagerRepository, PropertyManagerRepository>();
builder.Services.AddSingleton<IContractorRepository, ContractorRepository>();
builder.Services.AddSingleton<ISurveyorRepository, SurveyorRepository>();
builder.Services.AddSingleton<ISurveyRepository, SurveyRepository>();
builder.Services.AddSingleton<IRequestRepository, RequestRepository>();
builder.Services.AddSingleton<IBidRepository, BidRepository>();

builder.Services.AddSingleton<CurrentUserSingleton>();

await builder.Build().RunAsync();
