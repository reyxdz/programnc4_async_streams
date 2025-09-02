// File: part1_future.dart
Future<String> getNameLater() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Your name is Alex!';
  });
}

void showMessage() async {
  print('Getting your name...');
  String message = await getNameLater();
  print(message);
}

void main() {
  showMessage();
  print('This runs while waiting...');
}