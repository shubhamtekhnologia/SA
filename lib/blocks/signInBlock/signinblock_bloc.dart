import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signinblock_event.dart';
part 'signinblock_state.dart';

class SigninblockBloc extends Bloc<SigninblockEvent, SigninblockState> {
  SigninblockBloc() : super(SigninblockInitial()) {
    on<SigninblockEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
