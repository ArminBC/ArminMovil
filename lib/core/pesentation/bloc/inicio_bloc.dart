import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studybank/core/pesentation/bloc/inicio_event.dart';
import 'package:studybank/core/pesentation/bloc/inicio_state.dart';
import 'package:studybank/domain/usecases/login_form_data.dart' as usecase;


class FormBloc extends Bloc<InicioEvent, InicioState> {
  final usecase.loginformdata loadFormData;

  FormBloc(this.loadFormData) : super(const InicioState()) {
    on<LoadFormDataEvent>((event, emit) async {
      final formData = await loadFormData();
      emit(InicioState.fromModel(formData));
    });

    on<UsernameChanged>((event, emit) {
      emit(state.copyWith(username: event.username, isValid: _validateForm()));
    });
    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password, isValid: _validateForm()));
    });
    on<SaveChanged>((event, emit) {
      emit(state.copyWith(save: event.save, isValid: _validateForm()));
    });
  }

  bool _validateForm() {
   return state.username.isNotEmpty &&
        state.password.isNotEmpty &&
        state.save != 0;

  }
}
