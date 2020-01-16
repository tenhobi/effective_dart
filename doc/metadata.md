# Metadata Specs

The document has a root `effective_dart`, which contains keys as rules (for example `camel_case_types`).

Each rule has these attributes:

- `guide` = `style` | `documentation` | `usage` | `design`
- `severity` = `do` | `don't` | `prefer` | `avoid` | `consider`
- `references` = `List<String>` with urls to given guideline
- *optional* `disabled` = `false` (default) | `true`
- *optional* `disabled_reason` = `String`, (used when `disabled` is `true`)

**Note** that `consider` rules are not marked as disabled, but are commented out in `analysis_options` file.

## Example

```yaml
effective_dart:
  camel_case_types:
    guide: style
    severity: do
    references:
      - https://dart.dev/guides/language/effective-dart/style#do-name-types-using-uppercamelcase

  comment_references:
    guide: documentation
    severity: do
    references:
      - https://dart.dev/guides/language/effective-dart/documentation#do-use-square-brackets-in-doc-comments-to-refer-to-in-scope-identifiers
    disabled: true
    disabled_reason: "Unused because https://github.com/dart-lang/sdk/issues/36974"

  # ...
```
