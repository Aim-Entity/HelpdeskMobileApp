using System;
using Domain.Entities.Job;

namespace Application.PluginInterfaces.Job;

public interface INoteRepository
{
  Task<IEnumerable<Note>> GetAllNotesAsync();
  Task<Note> InsertNewNoteAsync(Note note);
}
