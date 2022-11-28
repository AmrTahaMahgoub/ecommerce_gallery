part of 'sign_up_bloc.dart';

abstract class SignUpState extends Equatable {
  const SignUpState();

  @override
  List<Object> get props => [];
}

class SignUpInitial extends SignUpState {
   @override
  List<Object> get props => [];
}

class SignUpLoading extends SignUpState {
   @override
  List<Object> get props => [];
}

class SignUpSuccess extends SignUpState {
  SignUpSuccess(this.tokenInfo);
   SignUpModel  tokenInfo;
   @override
  // TODO: implement props
  List<Object> get props => [tokenInfo];
}

