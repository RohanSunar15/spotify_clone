part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

//Welcome Screen
class OpenSignupMethodScreen extends AuthState{}
class OpenLoginMethodScreen extends AuthState{}
class OpenWelcomeScreen extends AuthState{}

//Signup Method Screen
class OpenSignupEmailScreen extends AuthState{}
class OpenSignupPhoneScreen extends AuthState{}
class OpenSignupGoogleScreen extends AuthState{}