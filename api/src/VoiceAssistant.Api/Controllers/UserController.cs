using Microsoft.AspNetCore.Mvc;
using VoiceAssistant.Application.Abstractions;
using VoiceAssistant.Application.Dtos.User;

namespace VoiceAssistant.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class UserController : ControllerBase
{
    private readonly IUserService _service;
    private readonly ILogger<UserController> _logger;

    public UserController(IUserService service, ILogger<UserController> logger)
    {
        _service = service;
        _logger = logger;
    }

    [HttpPost]
    public async Task<ActionResult<UserDto>> Create([FromBody] CreateUserDto dto)
    {
        var promptDto = await _service.CreateAsync(dto);
        return CreatedAtAction(nameof(GetById), new { id = promptDto.Id }, promptDto);
    }

    [HttpGet("{id:guid}")]
    public async Task<ActionResult<UserDto>> GetById(Guid id)
    {
        var promptDto = await _service.GetByIdAsync(id);
        return promptDto is null ? NotFound() : Ok(promptDto);
    }

    [HttpGet]
    public async Task<ActionResult<IEnumerable<UserDto>>> GetMany()
        => Ok(await _service.GetManyAsync());

    [HttpPut("{id:guid}")]
    public async Task<ActionResult<UserDto>> Update(Guid id, [FromBody] UpdateUserDto dto)
    {
        var promptDto = await _service.UpdateAsync(id, dto);
        return promptDto is null ? NotFound() : Ok(promptDto);
    }

    [HttpDelete("{id:guid}")]
    public async Task<IActionResult> Delete(Guid id)
    {
        var success = await _service.DeleteAsync(id);
        return success ? NoContent() : NotFound();
    }
}