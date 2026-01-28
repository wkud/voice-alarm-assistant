using CrudWebApi.Application.Abstractions;
using CrudWebApi.Application.Services;
using Microsoft.Extensions.DependencyInjection;

namespace CrudWebApi.Application;

public static class DependencyInjection
{
    public static IServiceCollection AddApplication(this IServiceCollection services)
    {
        services.AddScoped<IUserService, UserService>();

        return services;
    }
}
