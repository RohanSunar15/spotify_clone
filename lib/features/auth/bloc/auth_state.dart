part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

//Welcome Screen
class OpenSignupMethodScreen extends AuthState{}
class OpenLoginMethodScreen extends AuthState{}
