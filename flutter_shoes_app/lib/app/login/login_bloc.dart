import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shoes_app/app/login/login_event.dart';
import 'package:flutter_shoes_app/app/login/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginNormal());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
