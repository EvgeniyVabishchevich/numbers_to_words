import 'package:parameterized_test/parameterized_test.dart';
import 'package:test/test.dart';
import 'package:numbers_to_words/src/internal/container.dart';
import 'package:numbers_to_words/src/internal/integer_to_string_converter.dart';

void main() {
  IntegerToStringConverter integerToStringConverter = Container.czechContainer().intConverter;

  parameterizedTest('should convert numbers to words in Bulgarian',
    [
      [0, "nula"],
      [1, "jedna"],
      [2, "dvě"],
      [3, "tři"],
      [4, "čtyři"],
      [5, "pět"],
      [6, "šest"],
      [7, "sedm"],
      [8, "osm"],
      [9, "devět"],
      [11, "jedenáct"],
      [12, "dvanáct"],
      [13, "třináct"],
      [14, "čtrnáct"],
      [15, "patnáct"],
      [16, "šestnáct"],
      [17, "sedmnáct"],
      [18, "osmnáct"],
      [19, "devatenáct"],
      [10, "deset"],
      [20, "dvacet"],
      [30, "třicet"],
      [40, "čtyřicet"],
      [50, "padesát"],
      [60, "šedesát"],
      [70, "sedmdesát"],
      [80, "osmdesát"],
      [90, "devadesát"],
      [21, "dvacet jedna"],
      [37, "třicet sedm"],
      [43, "čtyřicet tři"],
      [58, "padesát osm"],
      [69, "šedesát devět"],
      [76, "sedmdesát šest"],
      [82, "osmdesát dva"],
      [95, "devadesát pět"],
      [100, "sto"],
      [200, "dvě stě"],
      [300, "tři sta"],
      [400, "čtyři sta"],
      [500, "pět set"],
      [600, "šest set"],
      [700, "sedm set"],
      [800, "osm set"],
      [900, "devět set"],
      [111, "sto jedenáct"],
      [272, "dvě stě sedmdesát dva"],
      [387, "tři sta osmdesát sedm"],
      [448, "čtyři sta čtyřicet osm"],
      [569, "pět set šedesát devět"],
      [625, "šest set dvacet pět"],
      [782, "sedm set osmdesát dva"],
      [895, "osm set devadesát pět"],
      [999, "devět set devadesát devět"],
      [1000, "jeden tisíc"],
      [2000, "dva tisíce"],
      [3000, "tři tisíce"],
      [4000, "čtyři tisíce"],
      [5000, "pět tisíc"],
      [7634, "sedm tisíc šest set třicet čtyři"],
      [11000, "jedenáct tisíc"],
      [15000, "patnáct tisíc"],
      [21000, "dvacet jeden tisíc"],
      [24190, "dvacet čtyři tisíc sto devadesát"],
      [653000, "šest set padesát tři tisíc"],
      [123454, "sto dvacet tři tisíc čtyři sta padesát čtyři"],
      [700000, "sedm set tisíc"],
      [999999, "devět set devadesát devět tisíc devět set devadesát devět"],
      [1000000, "jeden milion"],
      [2000000, "dva miliony"],
      [5000000, "pět milionů"],
      [23437219, "dvacet tři milionů čtyři sta třicet sedm tisíc dvě stě devatenáct"],
      [100000000, "sto milionů"],
      [123456789, "sto dvacet tři milionů čtyři sta padesát šest tisíc sedm set osmdesát devět"],
      [322089890, "tři sta dvacet dva milionů osmdesát devět tisíc osm set devadesát"],
      [1000000000, "jedna miliarda"],
      [2147483647, "dvě miliardy sto čtyřicet sedm milionů čtyři sta osmdesát tři tisíc šest set čtyřicet sedm"]
    ],
    p2((int number, String text) {
      expect(integerToStringConverter.asWords(number), text);
    }),
  );
}
