import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studybank/core/pesentation/bloc/Contactos/contactos_event.dart';
import 'package:studybank/core/pesentation/bloc/Contactos/contactos_state.dart';
import 'package:studybank/domain/usecases/contacos_form_data.dart' as usecase;

class ContactosBloc extends Bloc<ContactosEvent, ContactosState> {
  final usecase.contactosformdata loadFormData;

  ContactosBloc(this.loadFormData) : super(const ContactosState()) {
    on<LoadFormDataEvent>((event, emit) async {
      final formData = await loadFormData();
      emit(ContactosState.fromModel(formData));
    });

    on<NameContacChanged>((event, emit) {
      emit(state.copyWith(namecontac: event.namecontac, isValid: _validateForm()));
    });
    on<NumTarjetChanged>((event, emit) {
      emit(state.copyWith(numtarjet: event.numtarjet, isValid: _validateForm()));
    });
    on<FotoChanged>((event, emit) {
      emit(state.copyWith(foto: event.foto, isValid: _validateForm()));
    });
    on<AliasChanged>((event, emit) {
      emit(state.copyWith(alias: event.alias, isValid: _validateForm()));
    });
  }

  bool _validateForm() {
    return state.namecontac.isNotEmpty &&
        state.numtarjet.isNotEmpty &&
        state.foto.isNotEmpty &&
        state.alias.isNotEmpty;
  }
}