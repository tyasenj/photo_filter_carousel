import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:photo_filter_carousel/widget/filter_carousel.dart';
import 'package:photo_filter_carousel/widget/filter_selector.dart'; // Import file main.dart yang berisi PhotoFilterCarousel

void main() {
  testWidgets('Test widget PhotoFilterCarousel', (WidgetTester tester) async {
    // Bangun widget dengan mem-pump MaterialApp yang berisi PhotoFilterCarousel
    await tester.pumpWidget(const MaterialApp(
      home: PhotoFilterCarousel(), // Referensi widget yang benar
    ));

    // Verifikasi apakah widget PhotoFilterCarousel ada
    expect(find.byType(PhotoFilterCarousel), findsOneWidget);

    // Kamu juga bisa menguji widget lain di dalam PhotoFilterCarousel
    // Misalnya, memeriksa ada atau tidaknya FilterSelector
    expect(find.byType(FilterSelector), findsOneWidget);
  });
}
