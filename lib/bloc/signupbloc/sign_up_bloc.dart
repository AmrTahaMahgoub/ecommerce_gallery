import 'package:bloc/bloc.dart';
import 'package:ecommerce_gallery/repository/auth/signup/signup_repo.dart';
import 'package:equatable/equatable.dart';

import '../../models/auth/signup/signup_model.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpRepository signUpRepository;
  SignUpBloc(this.signUpRepository) : super(SignUpInitial()) {
    on<SignUpSuccessEvent>((event, emit) async {
      emit(SignUpLoading());
      try {
        var signupInfo = await signUpRepository.signupData(
            event.userName, event.email, event.password, event.cityId);
        emit(SignUpSuccess(signupInfo));
      } on Exception catch (e) {
        // TODO
        print(e.toString());
      }
    });
  }
}
