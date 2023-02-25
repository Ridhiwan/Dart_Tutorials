import "dart:io";

void main(){
  print("Please enter a number: ");
  var inp = stdin.readLineSync()!;

  dynamic num = double.tryParse(inp);

  if (num.runtimeType != Null) {
    // Determine the number of decimal places
    var decimals = num.toString().split('.')[1];
    int zeros = decimals.length - 1;

    // Create the increment number for the loop
    String increment = "0." + "0" * zeros + "1";
    var inc = double.parse(increment);
    assert(inc is double);

    List allnum = [];

    // Create the list of numbers with proper increment for all real numbers
    double i = 0;

    if (num >= 0) {
      while (i < (num)) {
        i += inc;
        double num1 = double.parse((i).toStringAsFixed(decimals.length));
        allnum.add(num1);
      }
    } else {
      while (i > (num)) {
        i -= inc;
        double num1 = double.parse((i).toStringAsFixed(decimals.length));
        allnum.add(num1);
      }
    }
    //print(allnum);
    List alldvd = [];

    // Check if the number is a divider and add it to the alldvd list
    for (int j = 0; j < allnum.length; j++) {
      if (num % allnum[j] == 0) {
        alldvd.add(allnum[j]);
      } else {
        continue;
      }
    }
    print("Below is a list of all divisors for $num:");
    print(alldvd);
  } else {
    print("You have entered and Invalid number.");
  }
}