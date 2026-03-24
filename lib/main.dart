void main() {
  print('------> Started the Application');

  String data = fetchData();
  print('the data is $data');

  print("-------> The program has ended");
}

String fetchData() {
  print('Inside the fetchData() method');
  Future.delayed(Duration(seconds: 3));
  return "Future";
}
