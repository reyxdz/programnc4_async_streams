// File: part3_stream.dart 
Stream<String> messageStream() async* { 
 yield '1'; 
 await Future.delayed(Duration(seconds: 1)); 
 yield '2'; 
 await Future.delayed(Duration(seconds: 1)); 
 yield '3'; 
 await Future.delayed(Duration(seconds: 1)); 
 yield '4'; 
 await Future.delayed(Duration(seconds: 1)); 
 yield '5'; 
}

void main() { 
 messageStream().listen((msg) { 
   print('New: $msg'); 
 }); 

 print('Listening to messages...'); 
} 
