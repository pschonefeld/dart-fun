import 'package:polymer/polymer.dart';
import 'mymixin.dart';
import 'test_c.dart';

@CustomTag('test-b')
class TestB extends PolymerElement with MyMixin{

  TestB.created() : super.created() {

  }

  @override
  void domReady(){
    doSomething(this);    
  }
  
}

