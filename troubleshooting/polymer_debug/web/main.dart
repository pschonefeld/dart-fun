import 'package:polymer/polymer.dart';
import 'dart:html';


  @initMethod
  void main(){
    print("here's johnny");
    
    var observer = new MutationObserver((mutations, _) {
      mutations.forEach((mutation) {
       print(
         '[mutation] ' +
         mutation.attributeName +
         ' is now: ' +
         mutation.target.attributes[mutation.attributeName]
       );
      });
    });
    
    window.onLoad.listen((e)=>observer.observe(querySelector("click-counter"),attributes:true,subtree: true));  
    
  }
  
