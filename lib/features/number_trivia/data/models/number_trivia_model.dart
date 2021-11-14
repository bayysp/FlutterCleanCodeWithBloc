import 'package:trivia_number/features/number_trivia/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({
    required String text,
    required int number,
    required bool found,
    required String type,
  }) : super(
          text: text,
          number: number,
          found: found,
          type: type,
        );

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(
      text: json['text'],
      number: (json['number']).toInt(),
      found: json['found'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['text'] = text;
    _data['number'] = number;
    _data['found'] = found;
    _data['type'] = type;
    return _data;
  }
}
