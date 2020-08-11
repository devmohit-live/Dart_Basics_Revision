- whatever data we want which takes time we put await before it ; and the caller function will be async

- Since task3 want an output from task2 it is wiser not to put all the operational code into different function, but if it is compulsory:
  call that function => task3 inside taks2 . :=>

```dart
      task2() async {
        var d = await Future.delayed(Duration(seconds: 10), () {
          print('task 2 done!!!');
          print('This is task 2');
          var ret = 'hello user';
          return ret;
        });
        task3(d);
      }
```
