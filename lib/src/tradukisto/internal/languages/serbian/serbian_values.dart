import 'package:untitled1/src/tradukisto/internal/support/base_numbers_builder.dart';

import '../../base_values.dart';
import '../gender_forms.dart';
import '../gender_type.dart';
import '../plural_forms.dart';
import '../slavic_plural_forms.dart';

class SerbianValues implements BaseValues {
  @override
  Map<int, GenderForms> baseNumbers() {
    return BaseNumbersBuilder.baseNumbersBuilder()
        .putString(0, "nula")
        .put(
            1,
            GenderForms.genderFormsNonApplicable(
                "jedan", "jedna", "jedan", "jedan"))
        .put(
            2, GenderForms.genderFormsNonApplicable("dva", "dve", "dve", "dva"))
        .putString(3, "tri")
        .putString(4, "četiri")
        .putString(5, "pet")
        .putString(6, "šest")
        .putString(7, "sedam")
        .putString(8, "osam")
        .putString(9, "devet")
        .putString(10, "deset")
        .putString(11, "jedanaest")
        .putString(12, "dvanaest")
        .putString(13, "trinaest")
        .putString(14, "četrnaest")
        .putString(15, "petnaest")
        .putString(16, "šestnaest")
        .putString(17, "sedamnaest")
        .putString(18, "osamnaest")
        .putString(19, "devetnaest")
        .putString(20, "dvadeset")
        .putString(30, "trideset")
        .putString(40, "četrdeset")
        .putString(50, "pedeset")
        .putString(60, "šezdeset")
        .putString(70, "sedamdeset")
        .putString(80, "osamdeset")
        .putString(90, "devedeset")
        .putString(100, "sto")
        .putString(200, "dvesta")
        .putString(300, "trista")
        .putString(400, "četiristo")
        .putString(500, "petsto")
        .putString(600, "šeststo")
        .putString(700, "sedamsto")
        .putString(800, "osamsto")
        .putString(900, "devetsto")
        .build();
  }

  @override
  List<PluralForms> pluralForms() {
    return [
      SlavicPluralForms("", "", "", GenderType.MASCULINE),
      SlavicPluralForms("hiljada", "hiljade", "hiljada", GenderType.FEMININE),
      SlavicPluralForms("milion", "miliona", "miliona", GenderType.MASCULINE),
      SlavicPluralForms(
          "milijarda", "milijarde", "milijardi", GenderType.FEMININE)
    ];
  }

  @override
  String currency() {
    return "RSD";
  }

  @override
  String twoDigitsNumberSeparator() {
    return ' ';
  }
}
