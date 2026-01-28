using CrudWebApi.Domain.Enums;

namespace CrudWebApi.Application.Dtos.User;

public record UserDto
{
    public required Guid Id { get; set; }
    public required string FirstName { get; set; }
    public required string LastName { get; set; }
    public required string EmailAddress { get; set; }
    public required UserAccountStatus Status { get; set; }
    
    public required DateTime CreatedAt { get; set; }
    public DateTime? UpdatedAt { get; set; }
}