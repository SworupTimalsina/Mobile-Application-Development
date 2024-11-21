// void main (){
//   Map cityCountry=Map<String,String>();

//   cityCountry['New York']='USA';
//   cityCountry['London']='UK';
//   cityCountry['Paris']='France';
  

//   cityCountry.forEach((city,country){
//     print ('$city is in $country');
//   });
//   }

  import 'dart:io';

void main() {
  Map cityCountry = <String, String>{};

  cityCountry['New York'] = 'USA';
  cityCountry['Kathmandu'] = 'Nepal';
  cityCountry['Paris'] = 'France';
  cityCountry['Berlin'] = 'Germany';

  print("Enter a city:");
  String? name = stdin.readLineSync();

  print("$name is in ${cityCountry[name]}.");
}
