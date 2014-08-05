library mylib;

import 'package:polymer/polymer.dart';
import "dart:html";

part "test_a.dart";
part "test_b.dart";
part "test_c.dart";

abstract class MyMixin {
  
  void doSomething(Element e){
    e.onMouseDown.listen((e)=>print(e.target));
  }
  
}