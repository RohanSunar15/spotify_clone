part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

//Welcome Screen
class SignupButtonTapped extends AuthEvent {}

class LoginButtonTapped extends AuthEvent {}

class BackButtonTapped extends AuthEvent {}

//Signup Method Screen
class EmailButtonTapped extends AuthEvent {}

class PhoneButtonTapped extends AuthEvent {}

class GoogleButtonTapped extends AuthEvent {}

class LoginTextTapped extends AuthEvent {}

//Signup Email Screen
class EmailChanged extends AuthEvent {
  final String email;

  EmailChanged(this.email);
}

class PasswordChanged extends AuthEvent {
  final String password;

  PasswordChanged(this.password);
}

class DOBChanged extends AuthBloc {
  final String dob;
  DOBChanged(this.dob);
}

class EmailNextButtonTapped extends AuthEvent {}

class PasswordNextButtonTapped extends AuthEvent {}

class DobNextButtonTapped extends AuthEvent {}

//Signup Phone Screen
