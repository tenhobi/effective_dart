import '../guide.dart';
import '../lint_rule.dart';
import '../severity.dart';

///
List<LintRule> rules = [
  LintRule(
    name: 'slash_for_doc_comments',
    severity: Severity.doit,
    guide: Guide.documentation,
    references: [
      'do-use--doc-comments-to-document-members-and-types',
    ],
  ),
  LintRule(
    name: 'package_api_docs',
    severity: Severity.prefer,
    guide: Guide.documentation,
    references: [
      'prefer-writing-doc-comments-for-public-apis',
    ],
  ),
  LintRule(
    name: 'public_member_api_docs',
    severity: Severity.prefer,
    guide: Guide.documentation,
    references: [
      'prefer-writing-doc-comments-for-public-apis',
    ],
  ),
  LintRule(
    name: 'comment_references',
    severity: Severity.doit,
    guide: Guide.documentation,
    references: [
      'do-use-square-brackets-in-doc-comments-to-refer-to-in-scope-identifiers',
    ],
    disabled: true,
    disabledReason:
        'Unused because https://github.com/dart-lang/sdk/issues/36974',
  ),
];
