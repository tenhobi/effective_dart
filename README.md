# effective_dart

This package provides the lints according to the [Effective Dart](https://dart.dev/guides/language/effective-dart) guide.

This package is inspired by the [pedantic](https://github.com/dart-lang/pedantic) package, which contains lints internally used at Google.

## Using the Lints

To use the lints add a dev dependency in your `pubspec.yaml`:

```yaml
dev_dependencies:
  effective_dart: ^1.0.0
```

Then add an include in your `analysis_options.yaml` file:

```yaml
include: package:effective_dart/analysis_options.yaml
```

You can always specify a specific version instead:

```yaml
include: package:effective_dart/analysis_options.1.0.0.yaml
```

## License

Licensed under the [MIT License](LICENSE).
