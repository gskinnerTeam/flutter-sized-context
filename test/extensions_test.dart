import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sized_context/sized_context.dart';
import 'package:universal_platform/universal_platform.dart';

void main() {
  group('sized context extension test =>', () {
    testWidgets('should return pixels per inch.', (WidgetTester tester) async {
      late BuildContext _context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              _context = context;

              return Placeholder();
            },
          ),
        ),
      );

      expect(
        _context.pixelsPerInch,
        UniversalPlatform.isAndroid || UniversalPlatform.isIOS ? 150 : 96,
      );
    });

    testWidgets('should return MediaQueryData.', (WidgetTester tester) async {
      late BuildContext _context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              _context = context;

              return Placeholder();
            },
          ),
        ),
      );

      expect(_context.mq, isA<MediaQueryData>());
    });

    testWidgets('should return true if orientation is landscape.', (WidgetTester tester) async {
      late BuildContext _context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              _context = context;

              return Placeholder();
            },
          ),
        ),
      );

      expect(_context.isLandscape, isTrue);
    });

    testWidgets('should return screen size in pixels.', (WidgetTester tester) async {
      late BuildContext _context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              _context = context;

              return Placeholder();
            },
          ),
        ),
      );

      expect(_context.sizePx, const Size(800, 600));
    });

    testWidgets('should return screen width in pixels.', (WidgetTester tester) async {
      late BuildContext _context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              _context = context;

              return Placeholder();
            },
          ),
        ),
      );

      expect(_context.widthPx, 800);
    });

    testWidgets('should return screen height in pixels.', (WidgetTester tester) async {
      late BuildContext _context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              _context = context;

              return Placeholder();
            },
          ),
        ),
      );

      expect(_context.heightPx, 600);
    });

    testWidgets('should return screen diagonal in pixels.', (WidgetTester tester) async {
      late BuildContext _context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              _context = context;

              return Placeholder();
            },
          ),
        ),
      );

      expect(_context.diagonalPx, 1000.0);
    });

    testWidgets('should return screen width in inches.', (WidgetTester tester) async {
      late BuildContext _context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              _context = context;

              return Placeholder();
            },
          ),
        ),
      );

      expect(_context.widthInches, closeTo(8.3333, 1e-4));
    });

    testWidgets('should return screen height in inches.', (WidgetTester tester) async {
      late BuildContext _context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              _context = context;

              return Placeholder();
            },
          ),
        ),
      );

      expect(_context.heightInches, 6.25);
    });

    testWidgets('should return screen diagonal in inches.', (WidgetTester tester) async {
      late BuildContext _context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              _context = context;

              return Placeholder();
            },
          ),
        ),
      );

      expect(_context.diagonalInches, closeTo(10.4166, 1e-4));
    });

    testWidgets('should return a fraction of screen width in pixels.', (WidgetTester tester) async {
      late BuildContext _context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              _context = context;

              return Placeholder();
            },
          ),
        ),
      );
      expect(_context.widthPct(0.5), 400);
    });

    testWidgets('should return a fraction of screen height in pixels.', (WidgetTester tester) async {
      late BuildContext _context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              _context = context;

              return Placeholder();
            },
          ),
        ),
      );

      expect(_context.heightPct(0.25), 150);
    });
  });
}
