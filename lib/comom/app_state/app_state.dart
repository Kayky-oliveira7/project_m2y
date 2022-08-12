abstract class AppState {}

class StartAppState implements AppState {}

class LoadAppState implements AppState {}

class DataAppState<T> implements AppState {
  final T data;

  DataAppState(this.data);
}
