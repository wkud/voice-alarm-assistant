using CrudWebApi.Domain.Enums;

namespace CrudWebApi.Application.Dtos.User;

public record UpdateUserDto
{
    public required string FirstName { get; set; }
    public required string LastName { get; set; }
    public required string EmailAddress { get; set; }
    public required UserAccountStatus Status { get; set; }
}
