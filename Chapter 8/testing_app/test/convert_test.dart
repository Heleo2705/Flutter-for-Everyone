import 'package:test/test.dart';
import 'package:testing_app/main.dart';

void main() {
  test('testing the conversion rate', () {
    String testString = "1";
    testString = convert(result: testString);
    expect(testString, "0.0254");
  });
}
