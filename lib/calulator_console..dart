import "dart:io";

dynamic calculate() {
  bool running = true;

  try {
    while (running) {
      print(
"""


do to your choix:


0 -->add

1 -->sub

2 -->multi

3 -->div

4 -->quit


""");

      print("n\ your chox :");

      String Choix = stdin.readLineSync()!;

      print("choix : ${Choix}");

      if (Choix == "4") {
        print("thank you and good baye!!! ");
        running = false;
      } else {
        print("Veuillez entrer notre premier nombre : ");
        double? number1 = double.parse(stdin.readLineSync()!);
        print("Veuillez entrer notre deuxieme nombre : ");
        double? number2 = double.parse(stdin.readLineSync()!);

        switch (Choix) {
          case "0":
            print("""

;) ==>add $number1 + $number2 = ${{ number1 = number2 }}

""");
            break;
          case "1":
            print("""

;) ==>sub $number1 - $number2 = ${number1 - number2}

""");
            break;
          case "2":
            print("""

;) ==>multip $number1 X $number2 = ${number1 * number2}

""");
            break;
          case "3":
            if (number2 != 0) {
              print(
"""

;) ==>div $number1 / $number2 = ${number1 / number2}

""");
            } else {
              print("Error : no divisible");
            }
            break;
          default:
            print("Invalid try again (0-5");
            break;
        }
      }
    }
  } catch (e) {
    print("message error: $e");
  } finally {
    print("programme execute ");
  }
}
