import 'package:parameterized_test/parameterized_test.dart';
import 'package:test/test.dart';
import 'package:numbers_to_words/src/internal/container.dart';
import 'package:numbers_to_words/src/internal/integer_to_string_converter.dart';

void main() {
  IntegerToStringConverter integerToStringConverter =
      Container.englishContainer().intConverter;

  parameterizedTest(
    'should convert numbers to words in English',
    [
      [0, "zero"],
      [1, "one"],
      [2, "two"],
      [3, "three"],
      [4, "four"],
      [5, "five"],
      [6, "six"],
      [7, "seven"],
      [8, "eight"],
      [9, "nine"],
      [11, "eleven"],
      [12, "twelve"],
      [13, "thirteen"],
      [14, "fourteen"],
      [15, "fifteen"],
      [16, "sixteen"],
      [17, "seventeen"],
      [18, "eighteen"],
      [19, "nineteen"],
      [10, "ten"],
      [20, "twenty"],
      [30, "thirty"],
      [40, "forty"],
      [50, "fifty"],
      [60, "sixty"],
      [70, "seventy"],
      [80, "eighty"],
      [90, "ninety"],
      [21, "twenty-one"],
      [37, "thirty-seven"],
      [43, "forty-three"],
      [58, "fifty-eight"],
      [69, "sixty-nine"],
      [76, "seventy-six"],
      [82, "eighty-two"],
      [95, "ninety-five"],
      [100, "one hundred"],
      [200, "two hundred"],
      [300, "three hundred"],
      [400, "four hundred"],
      [500, "five hundred"],
      [600, "six hundred"],
      [700, "seven hundred"],
      [800, "eight hundred"],
      [900, "nine hundred"],
      [111, "one hundred eleven"],
      [272, "two hundred seventy-two"],
      [387, "three hundred eighty-seven"],
      [448, "four hundred forty-eight"],
      [569, "five hundred sixty-nine"],
      [625, "six hundred twenty-five"],
      [782, "seven hundred eighty-two"],
      [895, "eight hundred ninety-five"],
      [999, "nine hundred ninety-nine"],
      [1000, "one thousand"],
      [2000, "two thousand"],
      [3000, "three thousand"],
      [4000, "four thousand"],
      [5000, "five thousand"],
      [7634, "seven thousand six hundred thirty-four"],
      [11000, "eleven thousand"],
      [15000, "fifteen thousand"],
      [21000, "twenty-one thousand"],
      [24190, "twenty-four thousand one hundred ninety"],
      [653000, "six hundred fifty-three thousand"],
      [123454, "one hundred twenty-three thousand four hundred fifty-four"],
      [700000, "seven hundred thousand"],
      [999999, "nine hundred ninety-nine thousand nine hundred ninety-nine"],
      [1000000, "one million"],
      [2000000, "two million"],
      [5000000, "five million"],
      [
        23437219,
        "twenty-three million four hundred thirty-seven "
            "thousand two hundred nineteen"
      ],
      [100000000, "one hundred million"],
      [
        123456789,
        "one hundred twenty-three million four hundred "
            "fifty-six thousand seven hundred eighty-nine"
      ],
      [
        322089890,
        "three hundred twenty-two million eighty-nine "
            "thousand eight hundred ninety"
      ],
      [1000000000, "one billion"],
      [
        2147483647,
        "two billion one hundred forty-seven "
            "million four hundred eighty-three thousand six hundred forty-seven"
      ],
    ],
    p2((int number, String text) {
      expect(integerToStringConverter.asWords(number), text);
    }),
  );
}
