using System;
using Application.PluginInterfaces.Job;
using Domain.Entities.Job;

namespace Infrastructure.InMemory.Plugins;

public class NoteRepository : INoteRepository
{
  private List<Note> _notes;
  public NoteRepository()
  {
    _notes = new List<Note>()
    {

    };
  }

  public async Task<IEnumerable<Note>> GetAllNotesAsync()
  {
    return _notes;
  }

  public async Task<Note> InsertNewNoteAsync(Note note)
  {
    _notes.Add(note);
    return note;
  }
}
