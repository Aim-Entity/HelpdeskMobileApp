using System;
using Domain.Entities.Job;

namespace Application.Job;

public interface INoteService
{
  Task<IEnumerable<Note>> GetAllAsync();
  Task<Note> InsertNewNoteAsync(Note note);
}
