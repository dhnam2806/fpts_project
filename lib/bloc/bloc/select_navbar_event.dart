part of 'select_navbar_bloc.dart';

@immutable
abstract class SelectNavbarEvent {}

class SelectNavbarEventInitial extends SelectNavbarEvent {}

class SelectNavbarEventChange extends SelectNavbarEvent {
  final int index;
  SelectNavbarEventChange({required this.index});
}
