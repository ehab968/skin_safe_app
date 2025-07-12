import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/Notifications/data/repo/notification_repo.dart';
import 'package:skin_care_app/features/Notifications/logic/cubit/notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  final NotificationRepo _repo;

  NotificationCubit(this._repo) : super(const NotificationState.initial());

  Future<void> getNotifications() async {
    emit(const NotificationState.loading());
    
    final result = await _repo.getNotifications();
    
    result.when(
      success: (response) {
        emit(NotificationState.success(response));
      },
      failure: (error) {
        emit(NotificationState.error(error));
      },
    );
  }
} 