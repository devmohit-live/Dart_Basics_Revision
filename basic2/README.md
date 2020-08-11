### Functions

- lamda functions, anonymous fx
- postional
- named
- default arguments

### Higher order fucntions

- Passing functions as an argument

```dart
//defintion
mylen({String word, Function myfunc}) {
  print('Word is $word');
  print(myfunc(word));
}

//calling
mylen(
      word: "Hello I am A sample Word",
      myfunc: (text) {
        //passing lambda function directly
        print('Actual length is ${text.length}');
        return text.length + 5;
      });


```

- Getting the function as return

```dart
//defintion
myfunc() {
  Function h = (a, b) => a + b;
  return h;
}

//calling
  var add = myfunc();
  int res = add(2, 3);
  print(res);

```
