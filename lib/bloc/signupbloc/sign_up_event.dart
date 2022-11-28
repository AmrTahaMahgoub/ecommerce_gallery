part of 'sign_up_bloc.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class SignUpSuccessEvent extends SignUpEvent {
  String userName;
  String password;
  String email;
  String cityId;
  SignUpSuccessEvent(this.email, this.password, this.userName, this.cityId);
  @override
  List<Object> get props => [userName,email,password,cityId];
}
