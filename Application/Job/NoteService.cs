using System;
using Application.PluginInterfaces.Job;
using Domain.Entities.Job;

namespace Application.Job;

public class NoteService : INoteService
{
  private readonly INoteRepository _NoteRepository;

  public NoteService(INoteRepository NoteRepository)
  {
    _NoteRepository = NoteRepository;
  }

  public async Task<IEnumerable<Note>> GetAllAsync()
  {
    return await _NoteRepository.GetAllNotesAsync();
  }


  public async Task<Note> InsertNewNoteAsync(Note note)
  {
    await _NoteRepository.InsertNewNoteAsync(note);
    return note;
  }
}
