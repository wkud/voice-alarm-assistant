using VoiceAssistant.Application.Abstractions.ShoppingItems;
using VoiceAssistant.Application.Dtos.ShoppingItems;
using VoiceAssistant.Application.Exceptions;
using VoiceAssistant.Domain.Models;

namespace VoiceAssistant.Application.Services;

public class ShoppingItemService : IShoppingItemService
{
    private readonly IShoppingItemRepository _shoppingItemRepository;

    public ShoppingItemService(IShoppingItemRepository shoppingItemRepository)
    {
        _shoppingItemRepository = shoppingItemRepository;
    }

    public async Task<ShoppingItemDto> AddToCartSingleAsync(AddItemToCartSingleDto dto, CancellationToken ct = default)
    {
        var byCountDto = new AddItemToCartByCountDto(dto.ItemName, 1);
        return await AddToCartByCountAsync(byCountDto, ct);
    }

    public async Task<ShoppingItemDto> AddToCartByCountAsync(AddItemToCartByCountDto dto, CancellationToken ct = default)
    {
        // Assume:
        // - the only shop is Frisco for now (Auchan, BiedronkaOnGlovo can be added later on)  

        var shoppingItem = await _shoppingItemRepository.GetByNameAsync(dto.ItemName, ct);
        if (shoppingItem is null)
        {
            throw new EntityNotFoundException(nameof(ShoppingItem), nameof(dto.ItemName), dto.ItemName); // TODO write middleware to handle EntityNotFoundException exception
        }
        
        // 1. Validate if dto.ShoppingItemName exists in Database (ShoppingItem.Name)
        // 2. Find ShopProduct with Name matching to dto.ItemName
        //     - Assume there is only one Shop entity (for now)
        // 3. Get ShopProduct.Url
        // 4. Delegate a job to run specific action in a browser (adds to cart) given the shopProductUrl and count
        //     - if dto.Count == null (useCase == Single), then assume count = 1
        
        return await Task.FromException<ShoppingItemDto>(new NotImplementedException());
    }

    public async Task<ShoppingItemDto> AddToCartByAmountAsync(AddItemToCartByAmountDto dto, CancellationToken ct = default)
    {
        // 1. Find `ShopProduct` with Name matching to `dto.ItemName`
        // 1. Fetch matching `ShopProduct`'s properties:
        //     - `Description`
        //     - `AmountPerPiece` - amount of product per piece (e.g. 500g, 1l, 2kg etc.)
        //     - `UnitOfMeasurement` (e.g. `"g"`, `"l"`, `"kg"`)
        //     - Assume there is only one `Shop` entity
        // 2. Get `ShopProduct.Url`
        // 3. Calculate `piecesNeeded` to add to the cart.
        //     - `piecesNeeded = dto.Amount / shopProduct.AmountPerPiece` 
        // 4. Delegate a job to run specific action in a browser (adds to cart) given the `shopProductUrl`
        
        return await Task.FromException<ShoppingItemDto>(new NotImplementedException());
    }
}