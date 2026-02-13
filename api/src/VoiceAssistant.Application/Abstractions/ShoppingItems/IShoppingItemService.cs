using VoiceAssistant.Application.Dtos.ShoppingItems;

namespace VoiceAssistant.Application.Abstractions.ShoppingItems;

public interface IShoppingItemService
{
    Task<ShoppingItemDto> AddToCartSingleAsync(AddItemToCartSingleDto addItemToCartSingleDto);
    Task<ShoppingItemDto> AddToCartByCountAsync(AddItemToCartByCountDto addItemToCartByCountDto);
    Task<ShoppingItemDto> AddToCartByAmountAsync(AddItemToCartByAmountDto addItemToCartByAmountDto);
}