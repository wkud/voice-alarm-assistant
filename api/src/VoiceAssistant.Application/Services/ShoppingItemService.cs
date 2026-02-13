using VoiceAssistant.Application.Abstractions.ShoppingItems;
using VoiceAssistant.Application.Dtos.ShoppingItems;

namespace VoiceAssistant.Application.Services;

public class ShoppingItemService : IShoppingItemService
{
    private readonly IShoppingItemRepository _repository;

    public ShoppingItemService(IShoppingItemRepository repository)
    {
        _repository = repository;
    }
    
    public async Task<ShoppingItemDto> AddToCartAsync(AddItemToCartDto addItemToCartDto)
    {
        // Assume:
        // - the only shop is Frisco for now (Auchan, BiedronkaOnGlovo can be added later on)  
        
        // JEŚLI USE CASE = Single or Count 
        // 1. Przeszukać mapowanie shoppingItem.Name -> (Shop x ShoppingItem).Url
        // Last. Uruchomić joba w pythonie, który doda item do koszyka.
        
        // JEŚLI USE CASE = Amount
        // 1. Same as before -> url produktu w sklepie
        // 2. Pobrać parametry pasującego produktu
        // 2. Strzelić do LLM'a 
        // Last. Same as before
        
        return await Task.FromException<ShoppingItemDto>(new NotImplementedException());
    }
}