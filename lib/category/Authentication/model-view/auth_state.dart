abstract class AuthStates {}

class AuthInitial extends AuthStates {}

class LoginSuccessState extends AuthStates {}

class LoginLoadingState extends AuthStates {}

class LoginErrorState extends AuthStates {}

class RegisterSuccessstate extends AuthStates {}

class RegisterLoadingState extends AuthStates {}

class RegisterErrorState extends AuthStates {}
