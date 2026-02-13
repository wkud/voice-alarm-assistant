using VoiceAssistant.Domain.Abstractions;
using VoiceAssistant.Domain.ValueObjects;

namespace VoiceAssistant.Domain.Models;

/// <summary>
/// Represents a concrete product with specific bar code, manufacturer, logo, name, description etc. \
/// Relation-wise, represents connection between a specific **ShoppingItem** in specific **Shop**.
/// </summary>
public record ShopProduct : IEntity, IAuditable
{
    public required Guid Id { get; init; }
    
    public required string Url { get; set; }
    public string? Description { get; set; }
    public string? ImageUrl { get; set; }
    public Amount? Amount { get; set; }
    
    public required DateTime CreatedAt { get; init; }
    public DateTime? UpdatedAt { get; set; }
    
    public required Guid ShopId { get; set; }
    public required Shop Shop { get; set; }
    public required Guid ShoppingItemId { get; set; }
    public required ShoppingItem ShoppingItem { get; set; }
}