using System;
using System.Web.Mvc;

namespace HybridMobileProj.Client.Stores.Undo;

public class UndoStack
{
  public int Id { get; private set; }
  public List<string> Stack { get; set; } = new List<string> { };
  public int Pointer { get; set; } = -1;

  public UndoStack()
  {

  }

  private static UndoStack _instance;
  private static readonly object _lock = new object();

  public static UndoStack Instance(int id = 1)
  {
    if (_instance == null)
    {
      lock (_lock)
      {
        if (_instance == null)
        {
          _instance = new UndoStack();
          _instance.Id = id;
        }
      }
    }

    return _instance;
  }

  public bool IsEmpty()
  {
    return Stack.Count == 0;
  }

  public void Push(string item)
  {
    Pointer++;
    Stack.Add(item);

    NotifyStateChanged();
  }

  public string Pop()
  {
    string item = "";
    if (IsEmpty() == false)
    {
      item = Stack[Pointer - 1];
      Stack.RemoveAt(Pointer);
      Pointer--;
    }

    NotifyStateChanged();
    return item;
  }

  public string Peek()
  {
    return Stack[Pointer];
  }

  public event Action OnChange; // event raised when changed

  private void NotifyStateChanged() => OnChange?.Invoke();

}
