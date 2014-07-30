import 'package:polymer/polymer.dart';
import 'test_b.dart';
import 'test_c.dart';
@CustomTag('test-a')
class TestA extends PolymerElement {

  var temp = new TestB.created();
  TestA.created() : super.created() {
  }

}

