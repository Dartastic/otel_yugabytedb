// Licensed under the Dartastic Pro Software License Agreement.
// Copyright 2025-2026 Mindful Software LLC d/b/a Dartastic.io, All rights reserved.

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
