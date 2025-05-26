import 'package:article_app/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on article item, verify article details', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Verify that we're on the articles list page
      expect(find.text('Articles'), findsOneWidget);

      // Wait for articles to load
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Find and tap the first article
      final firstArticle = find.byType(InkWell).first;
      await tester.tap(firstArticle);
      await tester.pumpAndSettle();

      // Verify that we're on the details page
      expect(find.text('Article Details'), findsOneWidget);

      // Go back to the articles list
      final backButton = find.byIcon(Icons.chevron_left);
      await tester.tap(backButton);
      await tester.pumpAndSettle();

      // Verify that we're back on the articles list
      expect(find.text('Articles'), findsOneWidget);

      // Test pull to refresh
      await tester.fling(
        find.byType(RefreshIndicator),
        const Offset(0, 300),
        1000,
      );
      await tester.pumpAndSettle();
    });
  });
}
