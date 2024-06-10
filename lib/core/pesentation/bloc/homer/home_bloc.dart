import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studybank/core/pesentation/bloc/homer/home_event.dart';
import 'package:studybank/core/pesentation/bloc/homer/home_state.dart';
import 'package:studybank/domain/usecases/home_form_data.dart' as usecase;

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final usecase.HomeFormData loadFormData;

  HomeBloc(this.loadFormData) : super(const HomeState()) {
    on<LoadFormDataEvent>((event, emit) async {
      final formData = await loadFormData();
      emit(HomeState.fromModel(formData));
    });

    on<UsernameChanged>((event, emit) {
      emit(state.copyWith(username: event.username, isValid: _validateForm()));
    });
    on<FotoChanged>((event, emit) {
      emit(state.copyWith(foto: event.foto, isValid: _validateForm()));
    });
    on<MovimientosChanged>((event, emit) {
      emit(state.copyWith(movimientos: event.movimientos, isValid: _validateForm()));
    });
    on<SaldoAChanged>((event, emit) {
      emit(state.copyWith(SaldoA: event.SaldoA, isValid: _validateForm()));
    });
    on<SaldoMChanged>((event, emit) {
      emit(state.copyWith(SaldoM: event.SaldoM, isValid: _validateForm()));
    });
  }

  bool _validateForm() {
    return state.username.isNotEmpty &&
        state.foto.isNotEmpty &&
        state.movimientos.isNotEmpty &&
        state.SaldoA != 0 &&
        state.SaldoM != 0;
  }
}