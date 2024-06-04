import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../theme/base_text_theme_factory.dart';
import '../theme/text_theme_interfaces.dart';

extension BuildContextX on BuildContext {
  static final textStyle = BaseTextThemeFactory();
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  ThemeData get theme => Theme.of(this);

  TextThemeFactory get textTheme => textStyle;

  bool get hasVirtualHome => mediaQuery.padding.bottom > 0;

  S get s => S.of(this);
}
