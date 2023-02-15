void main() {
  dynamic userProfile(int age, String firstName, String lastName,
      int birthYear) {
    // The users age next year is an integer
    int nextYearage = age + 1;
    // The pass key is a float
    double pass = birthYear + 0.32 + age;
    // The password for the account is a String
    String password = "hjTuv45ko$pass";
    // Map of the full name of the user
    var fullName = new Map();
    fullName["first"] = firstName;
    fullName["last"] = lastName;
    // The credentials of the user are stored in a list
    List credentials = [fullName["first"], fullName["last"], nextYearage,
      password];

    return  [print("Full Name: " + credentials[0] + " " + credentials[1]),
      print("Password: " + password), print("PIN: " + "30$nextYearage")
    ];
  }

  userProfile(23, "Chukumowa", "Adenge", 1992);
}