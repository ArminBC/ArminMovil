import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studybank/core/pesentation/bloc/transferencia/transferencia_event.dart';
import 'package:studybank/core/pesentation/bloc/transferencia/transferencia_state.dart';
import 'package:studybank/domain/usecases/transferencia_form_data.dart' as usecase;

class TransferenciaBloc extends Bloc<TransferenciaEvent, TransferenciaState> {
  final usecase.TransformData loadFormData;

  TransferenciaBloc(this.loadFormData) : super(TransferenciaState(fecha: DateTime.now())) {
    on<LoadTransferenciaDataEvent>((event, emit) async {
      final formData = await loadFormData();
      emit(TransferenciaState.fromModel(formData));
    });

    on<MotivoChanged>((event, emit) {
      emit(state.copyWith(motivo: event.motivo, isValid: _validateForm()));
    });
    on<NameChanged>((event, emit) {
      emit(state.copyWith(name: event.name, isValid: _validateForm()));
    });
    on<CuentaChanged>((event, emit) {
      emit(state.copyWith(cuenta: event.cuenta, isValid: _validateForm()));
    });
    on<MovimientoChanged>((event, emit) {
      emit(state.copyWith(movimiento: event.movimiento, isValid: _validateForm()));
    });
    on<FechaChanged>((event, emit) {
      emit(state.copyWith(fecha: event.fecha, isValid: _validateForm()));
    });
  }
  
  bool _validateForm() {
    var state;
    return state.motivo.isNotEmpty &&
        state.name.isNotEmpty &&
        state.cuenta.isNotEmpty &&
        state.movimiento != 0.0 &&
        state.fecha != null;
  }
  
}