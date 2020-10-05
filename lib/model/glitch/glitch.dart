import 'package:equatable/equatable.dart';

class Glitch extends Equatable {
  final String messege;

  Glitch({this.messege});

  @override
  String toString() {
    return "Glitch(messege: $messege)";
  }

  @override
  List<Object> get props => [messege];
}
