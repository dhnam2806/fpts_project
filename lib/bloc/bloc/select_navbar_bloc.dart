import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'select_navbar_event.dart';
part 'select_navbar_state.dart';

class SelectNavbarBloc extends Bloc<SelectNavbarEvent, SelectNavbarState> {
  SelectNavbarBloc() : super(SelectNavbarState(index: 0)) {
    on<SelectNavbarEventInitial>(selectNavbarEventInitial);
    on<SelectNavbarEventChange>(selectNavbarEventChange);
  }

  Future<FutureOr<void>> selectNavbarEventInitial(
      SelectNavbarEventInitial event, Emitter<SelectNavbarState> emit) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    emit(SelectNavbarState(index: prefs.getInt('index') ?? 0));
    print("index prefs: ${prefs.getInt('index') ?? 0}");
  }

  Future<FutureOr<void>> selectNavbarEventChange(
      SelectNavbarEventChange event, Emitter<SelectNavbarState> emit) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('index', event.index);
    print("index: ${event.index}");
    emit(SelectNavbarState(index: event.index));
  }
}
