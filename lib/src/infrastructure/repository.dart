abstract class Repository<T,U>{
  U execute(T port);
}

abstract class PostRepository<T,U>{
  U execute(T port, T data);
}