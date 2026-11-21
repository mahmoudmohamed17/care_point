import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    log('Change: $change | Bloc: $bloc');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    log('Closed: $bloc');
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    log('Created: $bloc');
  }

  @override
  void onDone(Bloc<dynamic, dynamic> bloc, Object? event, [Object? error, StackTrace? stackTrace]) {
    log('Done: $bloc');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('Error: $error | Bloc: $bloc | StackTrace: $stackTrace');
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    log('Event: $event | Bloc: $bloc');
  }

  @override
  void onTransition(Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition) {
    log('Transition: $transition | Bloc: $bloc');
  }
}
