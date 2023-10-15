import 'dart:io';

import 'package:switch_case/switch_case.dart' as switch_case;

void main(List<String> arguments) {
  //taxes();
  //calculator();
}

void taxes() {
  print('Введите сумму дохода: ');
  double income = double.parse(stdin.readLineSync()!);

  double tax;

  switch (income) {
    case double.infinity:
    case 0:
      tax = 0;
      break;
    case 10000:
      tax = 0;
      break;
    default:
      if (income <= 10000) {
        tax = 0;
      } else if (income <= 50000) {
        tax = income * 0.10;
      } else {
        tax = income * 0.12;
      }
      break;
  }

  print('Налог на доход составит: \$${tax.toStringAsFixed(2)}');
}

void calculator() {
  print('Введите первое число: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Введите оператор (+, -, *, /): ');
  String operator = stdin.readLineSync()!;

  print('Введите второе число: ');
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print('Ошибка: Нельзя делить на ноль.');
        return;
      }
      break;
    default:
      print('Ошибка: Неверный оператор.');
      return;
  }

  print('Результат: $result');
}
