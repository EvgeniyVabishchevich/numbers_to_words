import 'package:sprintf/sprintf.dart';
import 'package:untitled1/src/tradukisto/internal/support/double_scale_getter.dart';

import '../../double_to_string_converter.dart';
import '../../integer_to_string_converter.dart';
import '../../support/assert.dart';
import 'hindi_values.dart';

class HindidoubleToBankingMoneyConverter implements DoubleToStringConverter {
  static final String SUBUNIT_SEPARATOR = ",";
  static final String FORMAT = "%s %s%s %s";
  static final int MAXIMAL_DECIMAL_PLACES_COUNT = 2;
  static final int MAX_VALUE = 2147483647;

  final IntegerToStringConverter converter;
  final HindiValues hindiValues;

  HindidoubleToBankingMoneyConverter(this.converter, this.hindiValues);

  @override
  String asWords(double value) {
    return asWordsWithSymbol(value, hindiValues.currency());
  }

  @override
  String asWordsWithSymbol(double value, String currencySymbol) {
    validate(value);

    int units = value.toInt();
    int subunits = ((value - units) * 100).floor();

    String tempSubunitSymbol = hindiValues.paiseSymbol();
    String? tempSubUnitWords = SUBUNIT_SEPARATOR + converter.asWords(subunits)!;
    if (subunits <= 0) {
      tempSubunitSymbol = "";
      tempSubUnitWords = "";
    }

    String formattedValue = sprintf(FORMAT, [
      converter.asWords(units),
      currencySymbol,
      tempSubUnitWords,
      tempSubunitSymbol
    ]);
    return formattedValue.replaceAll(
        hindiValues.twoDigitsNumberSeparator(), "");
  }

  void validate(double value) {
    Assert.isTrue(
        DoubleScaleGetter.getScale(value) <= MAXIMAL_DECIMAL_PLACES_COUNT,
        () => sprintf(
            "can't transform more than %s decimal places for value %s",
            [MAXIMAL_DECIMAL_PLACES_COUNT, value]));

    Assert.isTrue(
        valueLessThanIntMax(value),
        () => sprintf(
            "can't transform numbers greater than 2147483647 for value %s",
            [value]));

    Assert.isTrue(
        valueGreaterThanOrEqualToZero(value),
        () =>
            sprintf("can't transform negative numbers for value %s", [value]));
  }

  bool valueLessThanIntMax(double value) {
    return value.compareTo(MAX_VALUE + 1) < 0; //java int max value + 1
  }

  bool valueGreaterThanOrEqualToZero(double value) {
    return !value.isNegative;
  }
}
