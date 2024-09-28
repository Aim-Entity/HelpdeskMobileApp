using Application.Common.Interfaces;
using Microsoft.Extensions.Logging;
using HybridMobileProj.Hybrid.DataAccess;
using Infrastructure.InMemory.Plugins;
using Application.PluginInterfaces.Property;

namespace HybridMobileProj.Hybrid
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });

            builder.Services.AddMauiBlazorWebView();
            // builder.Services.AddSingleton<IApplicationDbContext, AppDbContext>();
            builder.Services.AddSingleton<IPropertyRepository, PropertyRepository>();

#if DEBUG
            builder.Services.AddBlazorWebViewDeveloperTools();
    		builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
