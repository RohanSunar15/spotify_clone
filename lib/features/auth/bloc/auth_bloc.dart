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


  }

  FutureOr<void> signupButtonTapped(SignupButtonTapped event, Emitter<AuthState> emit) {
    emit(OpenSignupMethodScreen());
  }
  FutureOr<void> loginButtonTapped(LoginButtonTapped event, Emitter<AuthState> emit) {
    emit(OpenLoginMethodScreen());
  }


}
