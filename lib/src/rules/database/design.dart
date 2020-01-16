import '../guide.dart';
import '../lint_rule.dart';
import '../severity.dart';

///
List<LintRule> rules = [
  LintRule(
    name: 'use_to_and_as_if_applicable',
    severity: Severity.prefer,
    guide: Guide.design,
    references: [
      // ignore: lines_longer_than_80_chars
      'prefer-naming-a-method-to___-if-it-copies-the-objects-state-to-a-new-object',
      // ignore: lines_longer_than_80_chars
      'prefer-naming-a-method-as___-if-it-returns-a-different-representation-backed-by-the-original-object',
    ],
  ),
  LintRule(
    name: 'one_member_abstracts',
    severity: Severity.avoid,
    guide: Guide.design,
    references: [
      // ignore: lines_longer_than_80_chars
      'avoid-defining-a-one-member-abstract-class-when-a-simple-function-will-do',
    ],
  ),
  LintRule(
    name: 'avoid_classes_with_only_static_members',
    severity: Severity.avoid,
    guide: Guide.design,
    references: [
      'avoid-defining-a-class-that-contains-only-static-members',
    ],
  ),
  LintRule(
    name: 'prefer_mixin',
    severity: Severity.doit,
    guide: Guide.design,
    references: [
      'do-use-mixin-to-define-a-mixin-type',
      'avoid-mixing-in-a-class-that-isnt-intended-to-be-a-mixin',
    ],
  ),
  LintRule(
    name: 'prefer_final_fields',
    severity: Severity.prefer,
    guide: Guide.design,
    references: [
      'prefer-making-fields-and-top-level-variables-final',
    ],
  ),
  LintRule(
    name: 'use_setters_to_change_properties',
    severity: Severity.doit,
    guide: Guide.design,
    references: [
      'do-use-setters-for-operations-that-conceptually-change-properties',
    ],
  ),
  LintRule(
    name: 'avoid_setters_without_getters',
    severity: Severity.dont,
    guide: Guide.design,
    references: [
      'dont-define-a-setter-without-a-corresponding-getter',
    ],
  ),
  LintRule(
    name: 'avoid_returning_null',
    severity: Severity.avoid,
    guide: Guide.design,
    references: [
      // ignore: lines_longer_than_80_chars
      'avoid-returning-null-from-members-whose-return-type-is-bool-double-int-or-num',
    ],
  ),
  LintRule(
    name: 'avoid_returning_this',
    severity: Severity.avoid,
    guide: Guide.design,
    references: [
      'avoid-returning-this-from-methods-just-to-enable-a-fluent-interface',
    ],
  ),
  LintRule(
    name: 'type_annotate_public_apis',
    severity: Severity.prefer,
    guide: Guide.design,
    references: [
      // ignore: lines_longer_than_80_chars
      'prefer-type-annotating-public-fields-and-top-level-variables-if-the-type-isnt-obvious',
    ],
  ),
  LintRule(
    name: 'prefer_typing_uninitialized_variables',
    severity: Severity.consider,
    guide: Guide.design,
    references: [
      // ignore: lines_longer_than_80_chars
      'consider-type-annotating-private-fields-and-top-level-variables-if-the-type-isnt-obvious',
    ],
  ),
  LintRule(
    name: 'omit_local_variable_types',
    severity: Severity.avoid,
    guide: Guide.design,
    references: [
      'avoid-type-annotating-initialized-local-variables',
    ],
  ),
  LintRule(
    name: 'avoid_types_on_closure_parameters',
    severity: Severity.avoid,
    guide: Guide.design,
    references: [
      'avoid-annotating-inferred-parameter-types-on-function-expressions',
    ],
  ),
  LintRule(
    name: 'avoid_return_types_on_setters',
    severity: Severity.dont,
    guide: Guide.design,
    references: [
      'dont-specify-a-return-type-for-a-setter',
    ],
  ),
  LintRule(
    name: 'prefer_generic_function_type_aliases',
    severity: Severity.dont,
    guide: Guide.design,
    references: [
      'dont-use-the-legacy-typedef-syntax',
    ],
  ),
  LintRule(
    name: 'avoid_private_typedef_functions',
    severity: Severity.prefer,
    guide: Guide.design,
    references: [
      'prefer-inline-function-types-over-typedefs',
    ],
  ),
  LintRule(
    name: 'use_function_type_syntax_for_parameters',
    severity: Severity.consider,
    guide: Guide.design,
    references: [
      'consider-using-function-type-syntax-for-parameters',
    ],
  ),
  LintRule(
    name: 'avoid_positional_boolean_parameters',
    severity: Severity.avoid,
    guide: Guide.design,
    references: [
      'avoid-positional-boolean-parameters',
    ],
  ),
  LintRule(
    name: 'hash_and_equals',
    severity: Severity.doit,
    guide: Guide.design,
    references: [
      'do-override-hashcode-if-you-override-',
    ],
  ),
  LintRule(
    name: 'avoid_equals_and_hash_code_on_mutable_classes',
    severity: Severity.avoid,
    guide: Guide.design,
    references: [
      'avoid-defining-custom-equality-for-mutable-classes',
    ],
  ),
  LintRule(
    name: 'avoid_null_checks_in_equality_operators',
    severity: Severity.dont,
    guide: Guide.design,
    references: [
      'dont-check-for-null-in-custom--operators',
    ],
  ),
];
