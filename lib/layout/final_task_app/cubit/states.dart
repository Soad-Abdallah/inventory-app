abstract class TaskStates {}

class TaskInitialState extends TaskStates {}

class TaskAddUserLoadingState extends TaskStates {}

class TaskAddUserSuccessState extends TaskStates {}

class TaskAddUserErrorsState extends TaskStates {
  late final String Error;
  TaskAddUserErrorsState(this.Error);
}

class TaskGetUserLoadingState extends TaskStates {}

class TaskGetUserSuccessState extends TaskStates {}

class TaskGetUserErrorState extends TaskStates {
  final String error;
  TaskGetUserErrorState(this.error);
}

class TaskGetAllUserLoadingState extends TaskStates {}

class TaskGetAllUserSuccessState extends TaskStates {}

class TaskGetAllUserErrorState extends TaskStates {
  final String error;
  TaskGetAllUserErrorState(this.error);
}

class TaskEditeUserLoadingState extends TaskStates {}

class TaskEditeUserSuccessState extends TaskStates {}

class TaskEditeUserErrorState extends TaskStates {
  final String error;
  TaskEditeUserErrorState(this.error);
}

class TaskChangeBottomNavState extends TaskStates {}

class TaskImagePickedSuccessState extends TaskStates {}

class TaskImagePickedErrorState extends TaskStates {}

class TaskDeleteUserLoadingState extends TaskStates {}

class TaskDeleteUserSuccessState extends TaskStates {}

class Sucsses extends TaskStates {}






class maintanenceAddLoadingState extends TaskStates {}

class maintanenceAddSuccessState extends TaskStates {}

class maintanenceAddErrorsState extends TaskStates {
  late final String Error;
  maintanenceAddErrorsState(this.Error);
}

class GetAllMaintenanceHistoryLoadingState extends TaskStates {}
class GetAllMaintenanceHistorySuccessState extends TaskStates {}
class GetAllMaintenanceHistoryErrorState extends TaskStates {
  final String error;
  GetAllMaintenanceHistoryErrorState(this.error);
}
class EditeMaintenanceHistoryLoadingState extends TaskStates {}
class EditeMaintenanceHistorySuccessState extends TaskStates {}
class EditeMaintenanceHistoryErrorState extends TaskStates {
  final String error;
  EditeMaintenanceHistoryErrorState(this.error);
}
class maintanenceDeleteSuccessState extends TaskStates {}
class maintanenceDeleteErrorState extends TaskStates {}