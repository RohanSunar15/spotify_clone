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


  }
  //Welcome Screen
  FutureOr<void> signupButtonTapped(SignupButtonTapped event, Emitter<AuthState> emit) {
    emit(OpenSignupMethodScreen());
  }
  FutureOr<void> loginButtonTapped(LoginButtonTapped event, Emitter<AuthState> emit) {
    emit(OpenLoginMethodScreen());
  }


  //Signup Method Screen
  FutureOr<void> backButtonTapped(BackButtonTapped event, Emitter<AuthState> emit) {
    emit(OpenWelcomeScreen());
  }
  FutureOr<void> emailButtonTapped(EmailButtonTapped event, Emitter<AuthState> emit) {
  }
  FutureOr<void> phoneButtonTapped(PhoneButtonTapped event, Emitter<AuthState> emit) {
  }
  FutureOr<void> googleButtonTapped(GoogleButtonTapped event, Emitter<AuthState> emit) {
  }
  FutureOr<void> loginTextTapped(LoginTextTapped event, Emitter<AuthState> emit) {
    emit(OpenLoginMethodScreen());
  }
}
