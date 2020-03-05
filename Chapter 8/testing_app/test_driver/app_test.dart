import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group("Converter app", () {
    FlutterDriver driver;
    setUp(() async {
      driver = await FlutterDriver.connect();
    });
    tearDown(() {
      if (driver != null) driver.close();
    });
    var textField = find.byType('TextField');
    var button = find.byType('RaisedButton');
    var result = find.text("0.0254");
    test("testing the reversing", () async {
      await driver.tap(textField);
      await driver.enterText("1");
      await driver.waitForAbsent(result);
      await driver.tap(button);
      await driver.waitFor(result);
      await driver.waitUntilNoTransientCallbacks();
      assert(result != null);
    });
  });
}
