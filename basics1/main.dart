import 'functions.dart'; // module(file) where I have defined the functions

main() {
  print('Datatypes');
  var a = [1, 2, 5, "hello"]; //var represents dynamic datatypes
  print(a);
  print(a.runtimeType); //runtimetype represents datatype
  var b = [1, 2, 3, 4];
  print(b);
  print(b.runtimeType);
  //default
  int m = 0;
  String s = "hello";
  print(m);
  print(s);
  print(m.runtimeType);
  print(s.runtimeType);
  List<double> k = [1, 2, 3, 4];
  /*var<int> x = ["a","b"];
   var doesn't support generics */
  print(k.runtimeType);
  //MAP
  Map<String, Object> details = {
    "name": "Mohit",
    "rollno": 1234,
    "branch": "IT"
  };
  print(details);
  print(details.runtimeType);

  Map undef = {"name": "mohit", "roll": 123, 12: "gr"};
  print(undef);
  print(undef.runtimeType);

  //dynamic and Object
  /*
  Dynamic changes it datatype whenever new thing is assigned
  Object does the same
  */

  dynamic p = 123;
  print(p.runtimeType);
  p = "hrlo";
  print(p.runtimeType);
  Object q = 123;
  print(q.runtimeType);
  q = "hello";
  print(q.runtimeType);

  //functions

  lw(1, "hello");
  var jj = aa(56);
  print(jj);

  var qq = newf(12);
  var r = newf2(13);
  print(qq);
  print(r);
}
