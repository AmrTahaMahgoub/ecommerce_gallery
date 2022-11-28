part of 'login_bloc_bloc.dart';

@immutable
abstract class LoginBlocState extends Equatable {}

class LoginBlocInitial extends LoginBlocState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class LoginBlocLoading extends LoginBlocState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginBlocSuccess extends LoginBlocState {
  LoginBlocSuccess({required this.loginData});
  late LoginModel loginData;

  @override
  // TODO: implement props
  List<Object?> get props => [loginData];
}
class LoginBlocMessage extends LoginBlocState {
  LoginBlocMessage({required this.loginDataMessage});
  late LoginModel loginDataMessage;

  @override
  // TODO: implement props
  List<Object?> get props => [loginDataMessage];
}
