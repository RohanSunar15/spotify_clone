import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    //Welcome Screen
    on<SignupButtonTapped>(signupButtonTapped);
    on<LoginButtonTapped>(loginButtonTapped);

    on<BackButtonTapped>(backButtonTapped);

    //Signup Method Screen
    on<EmailButtonTapped>(emailButtonTapped);
    on<PhoneButtonTapped>(phoneButtonTapped);
    on<GoogleButtonTapped>(googleButtonTapped);
    on<LoginTextTapped>(loginTextTapped);

    //Signup Email Screen
    on<EmailChanged>(emailChanged);
  }
  //Welcome Screen
  FutureOr<void> signupButtonTapped(
      SignupButtonTapped event, Emitter<AuthState> emit) {
    emit(OpenSignupMethodScreen());
  }

  FutureOr<void> loginButtonTapped(
      LoginButtonTapped event, Emitter<AuthState> emit) {
    emit(OpenLoginMethodScreen());
  }

  //Signup Method Screen
  FutureOr<void> backButtonTapped(
      BackButtonTapped event, Emitter<AuthState> emit) {
    emit(OpenWelcomeScreen());
  }

  FutureOr<void> emailButtonTapped(
      EmailButtonTapped event, Emitter<AuthState> emit) {
    emit(OpenSignupEmailScreen());
  }

  FutureOr<void> phoneButtonTapped(
      PhoneButtonTapped event, Emitter<AuthState> emit) {
    emit(OpenSignupPhoneScreen());
  }

  FutureOr<void> googleButtonTapped(
      GoogleButtonTapped event, Emitter<AuthState> emit) {}
  FutureOr<void> loginTextTapped(
      LoginTextTapped event, Emitter<AuthState> emit) {
    emit(OpenLoginMethodScreen());
  }

  //Signup Email Screen
  FutureOr<void> emailChanged(EmailChanged event, Emitter<AuthState> emit) {
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]+$');
    final email = event.email;

    if (email.isEmpty) {
      emit(EmailValid(email: email, isEmailValid: false));
    }
    if (emailRegex.hasMatch(email)) {
      emit(EmailValid(email: email, isEmailValid: true));
    } else {
      emit(EmailValid(email: email, isEmailValid: false));
    }
  }
}
