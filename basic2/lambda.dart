main() {
  (a, b) => a + b; //this is a labda function/expression
  int res = add(2, 3);
  print(res);
  myfunc(name: "Mohit", age: 20); // calling just like flutter functions/class
  myfunc2(age: 21); //default value of name will be printed
  myfunc2(name: "Ram", age: 25); //name argument overridden
}

Function add = (a, b) => a + b; //refrerring this function as add
// the returntype of lambda functions is always Function

// named arguments and default arguments=>

//named arguments
myfunc({String name, int age}) {
  print("Hello $name your age is $age your name's length is ${name.length}");
}

//default agruments
myfunc2({String name = "Mohit", int age}) {
  print("Hello $name your age is $age your name's length is ${name.length}");
}
