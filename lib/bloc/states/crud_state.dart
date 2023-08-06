class CrudState {}

enum ProcessType { create, update, delete }//Reuseepilty

class ReadState<T> extends CrudState {
  final List<T> data;

  ReadState(this.data);
}

/// class CreateState extends CrudState {}
/// class UpdateState extends CrudState {}
/// class DeleteState extends CrudState {}
/// TODO: Short Solution

class ProcessState extends CrudState {
  //create ,update, delete
  final String message;
  final bool success;
  final ProcessType processType;//This Type Enum

  ProcessState(this.message, this.success, this.processType);
}

/// TODO: Used As InitialState In main
class LoadingState extends CrudState {}//Defult State
