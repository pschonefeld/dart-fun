import "dart:html";
abstract class MyMixin {
  
  void doSomething(Element e){
    e.onMouseDown.listen((e)=>print(e.target));
  }
  
}