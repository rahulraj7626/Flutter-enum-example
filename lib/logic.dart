import 'package:contact_listing_ui/enumaraters.dart';

int calculation(Test op, a, b) {
  switch (op) {
    case Test.plus:
      return a + b;

    case Test.minus:
      return a - b;
  }
}
