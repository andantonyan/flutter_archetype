import 'package:flutter_archetype/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('LoginPage', () {
    testWidgets('', (WidgetTester tester) async {
      await app.main();
      await tester.pumpAndSettle();
    });
  });
}
