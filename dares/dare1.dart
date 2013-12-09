//challenge link: https://plus.google.com/u/0/118397406534237711570/posts/XjgFRvqtVA4

void main() {
  //secretSantas {from:to,...}; ducplicate name must use middle initial or name 
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

  secretSantas.keys.forEach((k)=>
    secretSantas[k] = secretSantas.keys.firstWhere(
        (String x)=>!secretSantas.values.contains(x) && x.split(" ").last!=k.split(" ").last,
        orElse:(){})
  );
  
  secretSantas.forEach((k,v)=>print(v!=null?"$k gives to $v":"Company gives to $k"));
  
}

/* output:
Zoe Washburne gives to Malcolm Reynolds
Hoban Washburne gives to Simon Tam
Malcolm Reynolds gives to Zoe Washburne
Simon Tam gives to Hoban Washburne
River Tam gives to Buffy Summers
Buffy Summers gives to River Tam
Company gives to Dawn Summers
*/
