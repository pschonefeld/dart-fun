part of mylib;

@CustomTag('test-a')
class TestA extends PolymerElement {

  var temp = new TestB.created();
  TestA.created() : super.created() {
  }

}

