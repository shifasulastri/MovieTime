import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/main.dart';

void main() {
  testWidgets('MovieTime app displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MovieApp());

    expect(find.text('MovieTime'), findsOneWidget);
    expect(find.text('Trending'), findsOneWidget);
    expect(find.text('Popular'), findsOneWidget);
    expect(find.text('Top Rated'), findsOneWidget);
  });
}