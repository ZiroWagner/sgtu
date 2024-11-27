import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../domain/entities/user.dart';

// Events
abstract class AppStateEvent extends Equatable {
  const AppStateEvent();

  @override
  List<Object> get props => [];
}

class AppStateInitialized extends AppStateEvent {
  final User user;

  const AppStateInitialized(this.user);

  @override
  List<Object> get props => [user];
}

// States
abstract class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

class AppStateInitial extends AppState {}

class AppStateLoaded extends AppState {
  final User user;

  const AppStateLoaded(this.user);

  @override
  List<Object> get props => [user];
}

// Bloc
class AppStateBloc extends Bloc<AppStateEvent, AppState> {
  AppStateBloc() : super(AppStateInitial()) {
    on<AppStateInitialized>((event, emit) {
      emit(AppStateLoaded(event.user));
    });
  }
}