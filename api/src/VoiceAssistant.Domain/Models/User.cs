using CrudWebApi.Domain.Enums;

namespace CrudWebApi.Domain.Models;

public class User
{
    public required Guid Id { get; set; }
    public required string FirstName { get; set; }
    public required string LastName { get; set; }
    public required string EmailAddress { get; set; }
    public required UserAccountStatus Status { get; set; }
    
    public required DateTime CreatedAt { get; set; }
    public DateTime? UpdatedAt { get; set; }
}