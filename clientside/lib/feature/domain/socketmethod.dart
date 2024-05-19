import 'package:clientside/feature/domain/socketio.dart';

class SocketMethod {
  final _socketClient=SocketClient.instance.socket!;
  void createRoom( String nickname){
    if(nickname.isNotEmpty && _socketClient.connected){
      
      _socketClient.emit('createRoom',{"nickname":nickname});
    }
    else{
      print("something went worng");
    }
  }
  
}