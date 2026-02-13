namespace VoiceAssistant.Application.Dtos.ShoppingItems;

public record ShoppingItemDto(
    Guid Id,
    string Name,
    string ShopProductUrl,
    string? Description,
    string? PhotoUrl
);