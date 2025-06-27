import 'package:basketball_points_app/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  int TeamApoints = 0;
  int TeamBpoints = 0;

  CounterCubit() : super(IncreseAcounter());
  void TeamIncrement({required String team, required int PointsNumber}) {
    if (team == 'A') {
      TeamApoints += PointsNumber;
      emit(IncreseAcounter());
    } else {
      TeamBpoints += PointsNumber;
      emit(IncreseBcounter());
    }
  }

  void Reset() {
    TeamApoints = 0;
    TeamBpoints = 0;
    emit(ResetCounter());
  }
}
