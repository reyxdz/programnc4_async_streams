// File: part2_future_error.dart
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    throw Exception('Something went wrong!');
  });
}

void main() async{
  try {
    String message = await fetchData();
    print('Result: $message');
  } catch (e) {
    print('Caught an error: $e');
  }

  print('Still running even if something goes wrong.');
}
