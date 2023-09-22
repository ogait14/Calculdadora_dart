import 'dart:io';

void main() {
  while (true) {
    print("Escolha uma operação:");
    print("1 - Adição");
    print("2 - Subtração");
    print("3 - Multiplicação");
    print("4 - Divisão");
    print("0 - Sair");

    stdout.write("Opção: ");
    String? input = stdin.readLineSync();

    if (input == null) {
      print("Entrada inválida. Tente novamente.");
      continue;
    }

    int choice = int.tryParse(input) ?? -1;

    if (choice == 0) {
      print("Saindo da calculadora.");
      break;
    } else if (choice < 1 || choice > 4) {
      print("Opção inválida. Tente novamente.");
      continue;
    }

    stdout.write("Digite o primeiro número: ");
    double num1 = double.parse(stdin.readLineSync()!);

    stdout.write("Digite o segundo número: ");
    double num2 = double.parse(stdin.readLineSync()!);

    double result = 0;

    switch (choice) {
      case 1:
        result = num1 + num2;
        print("Resultado: $num1 + $num2 = $result");
        break;
      case 2:
        result = num1 - num2;
        print("Resultado: $num1 - $num2 = $result");
        break;
      case 3:
        result = num1 * num2;
        print("Resultado: $num1 * $num2 = $result");
        break;
      case 4:
        if (num2 == 0) {
          print("Não é possível dividir por zero.");
          break;
        }
        result = num1 / num2;
        print("Resultado: $num1 / $num2 = $result");
        break;
    }
  }
}
