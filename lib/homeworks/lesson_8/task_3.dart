final Map<String, String> commands = {
 'insert': 'додає вільне місце в тексті в позиції курсора',
  'delete': 'видаляє символ під курсором',
  'copy': 'копіює виділений текст в буфер обміну',
  'paste': 'вставляє текст з буфера обміну в позицію курсора',
  'cut': 'вирізає виділений текст i копіює його в буфер обміну',
  'undo': 'скасовує останню дію'
};

void main() {

  commands['format'] = 'форматує текст в позиції курсора';
  commands['undo'] = 'скасовує останню дію, якщо вона вже була проведена';

  print("Commands:");
  commands.forEach((k, v) {
    print("$k: $v");
  });

  print("");
  print("Commands again");

  for (var k in commands.keys) {
    print("$k: ${commands[k]}");
  }

  var maxl = 0; 
  var maxk = '';

   for (var k in commands.keys) {
    if ((commands[k] as String).length > maxl) {
      maxl = (commands[k] as String).length;
      maxk = k;
    }
  }
   print("");
   print("Max length command:  $maxk: ${commands[maxk]}");

}