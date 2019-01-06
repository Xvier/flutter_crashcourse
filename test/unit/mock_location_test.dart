import "package:test/test.dart";
import '../../lib/mocks/mock_location.dart';

void main() {
  group('Test suite', () {
    test('FetchAny test', () {
      var mockLocation = MockLocation.fetchAny();
      expect(mockLocation, isNotNull);
      expect(mockLocation.name, equals('Arashiyama Bamboo Grove'));
    });

    test('FetchAny test', () {
      var mockLocations = MockLocation.fetchAll();
      expect(mockLocations.length, greaterThan(0));
      expect(mockLocations[0].name, equals('Arashiyama Bamboo Grove'));
    });

    test('FetchAny test', () {
      var mockLocation = MockLocation.fetch(0);
      expect(mockLocation, isNotNull);
      expect(mockLocation.name, equals('Arashiyama Bamboo Grove'));
    });
  });
}
