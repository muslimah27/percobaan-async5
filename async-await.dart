void main() async {

//   function1();
//   await function4(80).then(
//     (value) {
//     print(value);
//     print("than");
//   },
//   ).catchError((error) {
//     print(error);
//     print("error");
//   });

  try {
    var value = await function4(70);
    print(value);
    print("try");
  } catch(error) {
    print(error);
    print("error");
  }

  function2();
  function3();

}

function1 (){
  print("Function 1");
}

function2 (){
  print("Function 2");
}

function3 (){
  print("Function 3");
}

Future<String> function4 (int nilai) {
  return Future.delayed(Duration(seconds: 3), () {


    if(nilai > 50) {
      return "LULUS";
    } else{
      throw "ERROR TIDAK LULUS";
    }
  });

}
