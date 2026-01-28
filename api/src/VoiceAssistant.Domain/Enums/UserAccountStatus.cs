namespace CrudWebApi.Domain.Enums;

public enum UserAccountStatus
{
    None = 0,
    Created = 1,
    EmailConfirmed = 2,
    ApprovedForCredit = 3,
    RemovedAndAnonymized = -1,
}