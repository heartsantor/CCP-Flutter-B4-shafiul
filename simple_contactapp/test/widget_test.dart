// test/widget_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_contactapp/main.dart'; // keep your package name here

void main() {
  testWidgets('Contacts page renders Bangla title and a contact', (
    tester,
  ) async {
    await tester.pumpWidget(const ContactsApp());
    expect(find.text('যোগাযোগ'), findsOneWidget);
    expect(find.text('সাব্বির রহমান'), findsOneWidget);
    expect(find.text('+8801712345678'), findsOneWidget);
  });
}
