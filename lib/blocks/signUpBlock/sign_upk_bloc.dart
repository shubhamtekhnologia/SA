import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_upk_event.dart';
part 'sign_upk_state.dart';

class SignUpkBloc extends Bloc<SignUpkEvent, SignUpkState> {
  SignUpkBloc() : super(SignUpkInitial()) {
    on<SignUpkEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
