import 'package:meta/meta.dart';

import '../lint_rule.dart';

///
@immutable
abstract class Generator {
  ///
  final String version;

  ///
  final List<LintRule> rules;

  ///
  Generator({
    @required this.version,
    @required this.rules,
  });

  ///
  String generate();
}
