part of mylib;

@CustomTag('test-b')
class TestB extends PolymerElement with MyMixin{

  TestB.created() : super.created() {

  }

  @override
  void domReady(){
    doSomething(this);    
  }
  
}

