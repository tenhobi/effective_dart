import 'package:meta/meta.dart';

import 'guide.dart';
import 'severity.dart';

///
@immutable
class LintRule {
  /// Contains name of the lint as used in the linter.
  /// For example `public_member_api_docs`.
  final String name;

  ///
  final Severity severity;

  ///
  final Guide guide;

  /// URL after hash (#)
  ///
  /// For example, for url
  /// https://dart.dev/guides/language/effective-dart/style#do-name-types-using-uppercamelcase
  /// use only -> do-name-types-using-uppercamelcase
  final List<String> references;

  ///
  LintRule({
    @required this.name,
    @required this.severity,
    @required this.guide,
    @required this.references,
  });
}
