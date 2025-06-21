part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

//Welcome Screen
class SignupButtonTapped extends AuthEvent{}

class LoginButtonTapped extends AuthEvent{}