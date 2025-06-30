part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

//Welcome Screen
class SignupButtonTapped extends AuthEvent {}

class LoginButtonTapped extends AuthEvent {}

//Signup Method Screen
class BackButtonTapped extends AuthEvent {}

class EmailButtonTapped extends AuthEvent {}

class PhoneButtonTapped extends AuthEvent {}

class GoogleButtonTapped extends AuthEvent {}

class LoginTextTapped extends AuthEvent {}

//Signup Email Screen
class EmailChanged extends AuthEvent {
  final String email;

  EmailChanged(this.email);
}

class NextButtonTapped extends AuthEvent {}

//Signup Phone Screen
