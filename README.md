# otel_yugabytedb

Dartastic OpenTelemetry bridge for YugabyteDB (distributed SQL).

Wraps each call in a CLIENT-kind span with vendor-specific attributes following OpenTelemetry semantic conventions where applicable.

```dart
import 'package:otel_yugabytedb/otel_yugabytedb.dart';

await tracedYugabyteDB<void>(
  operation: 'someOp',
  invoke: () async {
    final r = await client.someOp();
    return YugabyteDBCallResult(value: r, result: YugabyteDBResult(statusCode: 200));
  },
);
```

Suppress instrumentation within a block:

```dart
await runWithoutYugabyteDBInstrumentationAsync(() async {
  await client.someInternalSync();
});
```
