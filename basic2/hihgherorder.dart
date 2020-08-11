//defining function that takes function as an argument => higher order function
mylen({String word, Function myfunc}) {
  print('Word is $word');
  print(myfunc(word));
}

//this function returns function
myfunc() {
  Function h = (a, b) => a + b;
  return h;
}

main() {
  Function callength = (String text) => text.length; //function to be passed
  mylen(word: "Mohit", myfunc: callength);
  mylen(
      word: "Hello I am A sample Word",
      myfunc: (text) {
        //passing lambda function directly
        print('Actual length is ${text.length}');
        return text.length + 5;
      });

  var add = myfunc();
  int res = add(2, 3);
  print(res);
}
