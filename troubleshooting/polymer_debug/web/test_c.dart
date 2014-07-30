import 'package:polymer/polymer.dart';
import 'mymixin.dart';
/**
 * A Polymer click counter element.
 */
@CustomTag('test-c')
class TestC extends PolymerElement with MyMixin{

  TestC.created() : super.created() {

  }

  @override
  void domReady(){
    doSomething(this);    
  }  
  
}

