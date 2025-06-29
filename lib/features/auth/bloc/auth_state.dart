part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthError extends AuthState {}

//Welcome Screen
class OpenSignupMethodScreen extends AuthState {}

class OpenLoginMethodScreen extends AuthState {}

class OpenWelcomeScreen extends AuthState {}

//Signup Method Screen
class OpenSignupEmailScreen extends AuthState {}

class OpenSignupPhoneScreen extends AuthState {}

class OpenSignupGoogleScreen extends AuthState {}

//Signup Email Screen
class EmailValid extends AuthState {
  final String email;
  final bool isEmailValid;

  EmailValid({
    required this.email,
    required this.isEmailValid,
  });
}
