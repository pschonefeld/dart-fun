//challenge link: https://plus.google.com/u/0/118397406534237711570/posts/XjgFRvqtVA4

void main() {
  //secretSantas {from:to,...}; 
  //ducplicate names must use middle initial or name 
  //and double barrelled last names must be hyphenated 
  Map secretSantas = {
      "Zoe Washburne":null,
      "Hoban Washburne":null,
      "Malcolm Reynolds":null,
      "Simon Tam":null,
      "River Tam":null,
      "Buffy Summers":null,
      "Dawn Summers":null
  };

  List oddBods = [];
  
  secretSantas.keys.forEach((k)=>
    secretSantas[k] = secretSantas.keys.firstWhere(
        (String x)=>!secretSantas.values.contains(x) && x.split(" ").last!=k.split(" ").last,
        orElse:()=>oddBods.add(k))
  );
  
  secretSantas.forEach((k,v)=>v!=null?print("$k gives to $v"):"");
  oddBods.forEach((e)=>print("Company gives to $e"));
  
}

/* output:
Zoe Washburne gives to Malcolm Reynolds
Hoban Washburne gives to Simon Tam
Malcolm Reynolds gives to Zoe Washburne
Simon Tam gives to Hoban Washburne
River Tam gives to Buffy Summers
Buffy Summers gives to River Tam
company gives to Dawn Summers
*/
