using Microsoft.Extensions.DependencyInjection;
using VoiceAssistant.Application.Abstractions;
using VoiceAssistant.Application.Abstractions.Users;
using VoiceAssistant.Application.Services;

namespace VoiceAssistant.Application;

public static class DependencyInjection
{
    public static IServiceCollection AddApplication(this IServiceCollection services)
    {
        services.AddScoped<IUserService, UserService>();

        return services;
    }
}
