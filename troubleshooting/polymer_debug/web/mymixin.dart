library mylib;

import "dart:html";
import 'package:polymer/polymer.dart';

part "test_a.dart";
part "test_b.dart";
part "test_c.dart";

abstract class MyMixin {
  
  void doSomething(Element e){
    e.onMouseDown.listen((e)=>print(e.target));
  }
  
}