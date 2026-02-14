using Microsoft.AspNetCore.Mvc;
using VoiceAssistant.Application.Abstractions.ShoppingItems;
using VoiceAssistant.Application.Dtos.ShoppingItems;

namespace VoiceAssistant.Api.Controllers;

[ApiController]
[Route("api/[controller]s")]
public class ShoppingItemController : ControllerBase
{
    private readonly IShoppingItemService _service;

    public ShoppingItemController(IShoppingItemService service)
    {
        _service = service;
    }
    
    [HttpPost("addToCart/single")]
    public async Task<ActionResult<ShoppingItemDto>> AddToCartSingle([FromBody] AddItemToCartSingleDto dto, CancellationToken ct = default)
    {
        var shoppingItemDto = await _service.AddToCartSingleAsync(dto, ct);
        return CreatedAtAction(nameof(AddToCartSingle), new { id = shoppingItemDto.Id }, shoppingItemDto);
    }
    
    [HttpPost("addToCart/byCount")]
    public async Task<ActionResult<ShoppingItemDto>> AddToCartByCount([FromBody] AddItemToCartByCountDto dto, CancellationToken ct = default)
    {
        var shoppingItemDto = await _service.AddToCartByCountAsync(dto, ct);
        return CreatedAtAction(nameof(AddToCartByCount), new { id = shoppingItemDto.Id }, shoppingItemDto);
    }
    
    [HttpPost("addToCart/byAmount")]
    public async Task<ActionResult<ShoppingItemDto>> AddToCartByAmount([FromBody] AddItemToCartByAmountDto dto, CancellationToken ct = default)
    {
        var shoppingItemDto = await _service.AddToCartByAmountAsync(dto, ct);
        return CreatedAtAction(nameof(AddToCartByAmount), new { id = shoppingItemDto.Id }, shoppingItemDto);
    }
}