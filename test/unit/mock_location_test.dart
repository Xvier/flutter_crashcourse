import "package:test/test.dart";
import '../../lib/mocks/mock_location.dart';
void main(){
  test('FetchAny test', (){
    var mockLocation = MockLocation.fetchAny();
    expect(mockLocation, isNotNull);
    expect(mockLocation.name,equals('Arashiyama Bamboo Grove'));
  });
}