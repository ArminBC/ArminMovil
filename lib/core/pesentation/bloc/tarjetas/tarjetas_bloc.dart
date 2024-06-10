import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studybank/core/pesentation/bloc/tarjetas/tarjetas_event.dart';
import 'package:studybank/core/pesentation/bloc/tarjetas/tarjetas_state.dart';
import 'package:studybank/domain/usecases/tarjetas_form_data.dart' as usecase;

class TarjetaBloc extends Bloc<TarjetaEvent, TarjetaState> {
  final usecase.tarjetasformdata loadFormData;

  TarjetaBloc(this.loadFormData) : super( const TarjetaState(fecha: null)) {
  on<LoadTarjetaDataEvent>((event, emit) async {
    final formData = await loadFormData();
    emit(TarjetaState.fromModel(formData));
  });

    on<NameTChanged>((event, emit) {
      emit(state.copyWith(nameT: event.nameT, isValid: _validateForm()));
    });
    on<BancoChanged>((event, emit) {
      emit(state.copyWith(banco: event.banco, isValid: _validateForm()));
    });
    on<NumeroTChanged>((event, emit) {
      emit(state.copyWith(numeroT: event.numeroT, isValid: _validateForm()));
    });
    on<TipoTChanged>((event, emit) {
      emit(state.copyWith(tipoT: event.tipoT, isValid: _validateForm()));
    });
    on<FechaChanged>((event, emit) {
      emit(state.copyWith(fecha: event.fecha, isValid: _validateForm()));
    });
  }

  bool _validateForm() {
    return state.nameT.isNotEmpty &&
        state.banco.isNotEmpty &&
        state.numeroT.isNotEmpty &&
        state.tipoT.isNotEmpty &&
        state.fecha != null;
  }
}