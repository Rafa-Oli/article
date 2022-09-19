import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../repositories/interfaces/ilogin_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginRepository repository;

  LoginBloc({required this.repository}) : super(LoginInitial()) {
    on<LoginEvent>(_getNews);
  }

  Future<void> _getNews(LoginEvent event, Emitter<LoginState> emitter) async {
    try {
      emitter(LoginRunning());
      var news = await repository.login();
      emitter(const LoginSuccess());
    } catch (e) {
      emitter(LoginError());
    }
  }
}
