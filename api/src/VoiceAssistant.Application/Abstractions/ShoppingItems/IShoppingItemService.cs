using VoiceAssistant.Application.Dtos.ShoppingItems;

namespace VoiceAssistant.Application.Abstractions.ShoppingItems;

public interface IShoppingItemService
{
    Task<ShoppingItemDto> AddToCartSingleAsync(AddItemToCartSingleDto dto, CancellationToken ct = default);
    Task<ShoppingItemDto> AddToCartByCountAsync(AddItemToCartByCountDto dto, CancellationToken ct = default);
    Task<ShoppingItemDto> AddToCartByAmountAsync(AddItemToCartByAmountDto dto, CancellationToken ct = default);
}