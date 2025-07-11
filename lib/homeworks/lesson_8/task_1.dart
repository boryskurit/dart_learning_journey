var langs = [
  'Dart',
  'JavaScript',
  'Python',
  'Object Pascal',
  'C'
];

void main() {

  langs.add('Assembler');

  langs.removeAt(1); 


  for (var i = 0; i < langs.length; i++)
    print("${i+1} - ${langs[i]}");

  langs.sort();
  
  print("Sorted: $langs");
  
}