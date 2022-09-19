part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => [];
}

class LoginInitial extends LoginState {}

class LoginRunning extends LoginState {}

class LoginSuccess extends LoginState {
  const LoginSuccess();
  @override
  List<Object?> get props => [];
}

class LoginError extends LoginState {}
