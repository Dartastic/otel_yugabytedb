# Changelog

## [0.1.0-beta.1-wip]

### Added

- Initial release.
- `tracedYugabyteDB<T>(...)` — wraps a otel_yugabytedb call in a CLIENT-kind span
  with vendor-specific attributes.
- Zone-scoped suppression via `runWithoutYugabyteDBInstrumentation()` / `Async()`.
