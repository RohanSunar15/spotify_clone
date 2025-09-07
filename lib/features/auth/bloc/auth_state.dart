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

enum SignupStep {
  email,
  password,
  username,
  dob,
}

class SignupState {
  final SignupStep currentStep;
  final bool isValid;

  SignupState({
    this.currentStep = SignupStep.email,
    this.isValid = false,
  });

  SignupState copyWith({
    SignupStep? currentStep,
    bool? isValid,
  }) {
    return SignupState(
      currentStep: currentStep ?? this.currentStep,
      isValid: isValid ?? this.isValid,
    );
  }
}

class EmailValid extends AuthState {
  final String email;
  final bool isEmailValid;

  EmailValid({
    required this.email,
    required this.isEmailValid,
  });
}

class PasswordValid extends AuthState {
  final String password;
  final bool isPasswordValid;

  PasswordValid({
    required this.password,
    required this.isPasswordValid,
  });
}

class PasswordTooShort extends AuthState {}

class OpenCreatePasswordScreen extends AuthState {}

class OpenDobScreen extends AuthState {}
