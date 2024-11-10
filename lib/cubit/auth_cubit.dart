import 'package:bloc/bloc.dart';

import '../api_service/auth_api_services.dart';
import '../category/Authentication/model-view/auth_state.dart';
import '../category/Authentication/model/auth_model.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitial());
  late AuthModel authModel;

  loginState({required String email, required String password}) async {
    try {
      emit(LoginLoadingState());
      authModel = await ApiServices().login(email: email, password: password);
      emit(LoginSuccessState());
    } catch (e) {
      emit(LoginErrorState());
      print('Login failed: $e');
    }
  }
}
