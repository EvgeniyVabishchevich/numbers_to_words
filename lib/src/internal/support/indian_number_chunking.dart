import 'package:numbers_to_words/src/internal/support/number_chunking.dart';

class IndianNumberChunking extends NumberChunking {
  static final int INDIAN_SPLIT_FACTOR = 100;

  @override
  List<int> chunk(int value) {
    int splitCounter = 0;
    final result = <int>[];

    while (value > 0) {
      if (splitCounter < 1) {
        result.insert(0, (value % NumberChunking.SPLIT_FACTOR));
        value = (value ~/ NumberChunking.SPLIT_FACTOR).floor();
        splitCounter++;
      } else {
        result.insert(0, value % INDIAN_SPLIT_FACTOR);
        value = (value ~/ INDIAN_SPLIT_FACTOR).floor();
        splitCounter++;
      }
    }

    return result;
  }
}
