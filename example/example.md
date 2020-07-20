# How to use the package

To use the lints add a dev dependency in your `pubspec.yaml`:

```yaml
dev_dependencies:
  effective_dart: ^1.2.0
```

Then add an include in your `analysis_options.yaml` file:

```yaml
include: package:effective_dart/analysis_options.yaml
```

Or, if you using e.g. continuous builds,
they will likely fail whenever a new version of `package:effective_dart`
is released.
To avoid this, specify a version of `analysis_options.yaml`:

```yaml
include: package:effective_dart/analysis_options.1.2.0.yaml
```
