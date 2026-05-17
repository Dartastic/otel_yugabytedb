// Licensed under the Apache License, Version 2.0
// Copyright 2025, Mindful Software LLC, All rights reserved.

import 'package:otel_yugabytedb/otel_yugabytedb.dart';
import 'package:test/test.dart';

void main() {
  group('otel_yugabytedb', () {
    test('suppression toggles in zone', () async {
      expect(yugabyteDBInstrumentationSuppressed(), isFalse);
      await runWithoutYugabyteDBInstrumentationAsync(() async {
        expect(yugabyteDBInstrumentationSuppressed(), isTrue);
      });
      expect(yugabyteDBInstrumentationSuppressed(), isFalse);
    });

    test('YugabyteDBResult fields default null', () {
      const r = YugabyteDBResult();
      expect(r.statusCode, isNull);
    });
  });
}
