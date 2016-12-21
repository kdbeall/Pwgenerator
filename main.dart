import 'dart:html';
import 'dart:math' show Random;

/**
 * Runs program
 */
void main() {
  //run say hello when the #button is clicked
  initialPrint();
  querySelector("#button").onClick.listen(printNumbers);
}
/**
 *
 */
void initialPrint(){
  List numbers = generateNumbers();
  querySelector("#one").text = numbers.elementAt(0).toString();
  querySelector("#two").text = numbers.elementAt(1).toString();
  querySelector("#three").text = numbers.elementAt(2).toString();
  querySelector("#four").text = numbers.elementAt(3).toString();
  querySelector("#five").text = numbers.elementAt(4).toString();
  querySelector("#six").text = numbers.elementAt(5).toString();
}

/**
 * Outputs the numbers
 * @param event react to a mouse click1
 */
void printNumbers(MouseEvent event) {
  List numbers = generateNumbers();
  //querySelector("#name").text = numbers;
  querySelector("#one").text = numbers.elementAt(0).toString();
  querySelector("#two").text = numbers.elementAt(1).toString();
  querySelector("#three").text = numbers.elementAt(2).toString();
  querySelector("#four").text = numbers.elementAt(3).toString();
  querySelector("#five").text = numbers.elementAt(4).toString();
  querySelector("#six").text = numbers.elementAt(5).toString();



}

/**
 * Generates numbers
 */
List generateNumbers() {
  List numbers = [];
  var randomizer = new Random();
  for (int i = 0; i < 5; i++) {
    int num = randomizer.nextInt(69) + 1;
    if (checkList(numbers, num)) {
      numbers.add(num);
    } else {
      i--;
    }
  }
  int redBall = randomizer.nextInt(26) + 1;
  numbers.add(redBall);
  return numbers;
}

/**
 * Ensures that the new number isn't already in the list
 * @return if the new number is in the list
 */
bool checkList(List<int> numberList, int num) {
  for (int i = 0; i < numberList.length; i++) {
    if (num == numberList[i]) {
      return false;
    }
  }
  return true;
}

