import 'package:bloc/bloc.dart';
import 'package:ecommerce_gallery/models/auth/login/login_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../repository/auth/login/login_repo.dart';

part 'login_bloc_event.dart';
part 'login_bloc_state.dart';

class LoginBlocBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  LoginRepository loginRepository;
  LoginBlocBloc(this.loginRepository) : super(LoginBlocInitial()) {
    on<LoginSuccessEvent>((event, emit) async {
      emit(LoginBlocLoading());
      var loginInfo =
          await loginRepository.loginData(event.email, event.password);
      emit(LoginBlocSuccess(loginData: loginInfo));
      var message =await loginRepository.loginData(event.email, event.password);
      emit(LoginBlocMessage(loginDataMessage: message));
    });
  }
}
