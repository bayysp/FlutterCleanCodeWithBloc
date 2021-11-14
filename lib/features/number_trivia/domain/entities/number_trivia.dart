import 'package:equatable/equatable.dart';

class NumberTrivia extends Equatable {
  NumberTrivia({
    required this.text,
    required this.number,
    required this.found,
    required this.type,
  });

  late final String text;
  late final int number;
  late final bool found;
  late final String type;

  @override
  List<Object?> get props => [
        text,
        number,
        found,
        type,
      ];
}
