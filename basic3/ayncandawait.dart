/* ---------------------> previous code

##### Worst Way

void main() async {
  task1();
  var ret = await task2();
  task3(ret);
  task4();
  task5();
}

task1() {
  print('This is task 1');
}

task2() async {
  await Future.delayed(Duration(seconds: 10), () {
    print('task 2 done!!!');
    print('This is task 2');
    var ret = 'hello user';
    return ret;
  });
}

task3(ret) {
  print('This is task 3: data from task 2 is ${ret}');
}

task4() {
  print('This is task 4');
}

task5() {
  print('This is task 5');
}

<----------------------
*/

void main() {
  task1();
  task2();
  task4();
  task5();
  task6();
}

task1() {
  print('This is task 1');
}

// ## Good Way
task2() async {
  var d = await Future.delayed(Duration(seconds: 5), () {
    print('task 2 done!!!');
    print('This is task 2');
    var ret = 'hello user';
    return ret;
  });
  task3(d);
}

task3(ret) {
  print('This is task 3: data from task 2 is ${ret}');
}

task4() {
  print('This is task 4');
}

task5() {
  print('This is task 5');
}

// ### Best Way
// merge task2 and 3
task6() async {
  var d = await Future.delayed(Duration(seconds: 5), () {
    print('task 6 done!!!');
    print('This is task 6');
    var ret = 'hello user';
    return ret;
  });
  print('This is mergerd task : data from this waited task  is ${d}');
}
