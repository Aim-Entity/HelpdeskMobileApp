using System;

namespace Application.PluginInterfaces.GenericRepository;

public interface IGenericRepository<T> : IDisposable where T : class
{
  IQueryable<T> GetAll();
  void Add(T entity);
  void Delete(T entity);
  void Edit(T entity);
  void Reload(T entity);
}
