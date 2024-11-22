import 'package:dartz/dartz.dart';

class Arithmetic {
  final int first;
  final int second;

  Arithmetic(this.first, this.second);

  int sub() {
    return first - second;
  }

  Either<String, int> add() {
    try {
      return Right(first + second);
    } catch (e) {
      return Left(e.toString());
    }
  }
}

void main() {
  var arithmetic = Arithmetic(10, 5);

  var subtractionResult = arithmetic.sub();
  print('Subtraction: $subtractionResult');

  var additionResult = arithmetic.add();
  additionResult.fold(
    (error) => print('Error: $error'),
    (result) => print('Addition: $result'),
  );
}
