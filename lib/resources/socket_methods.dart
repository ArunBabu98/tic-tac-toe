import 'package:flutter/cupertino.dart';
import 'package:tic_tac_toe/resources/socket_client.dart';
import 'package:tic_tac_toe/screens/game_screen.dart';

class SocketMethods {
  final _socketlient = SocketClient.instance.socket!;

  void createRoom(String nickname) {
    if (nickname.isNotEmpty) {
      _socketlient.emit('createRoom', {
        'nickname': nickname,
      });
    }
  }

  void createRoomSuccessListener(BuildContext context){
    _socketlient.on('createRoomSuccess',(room){
      print(room);
      Navigator.pushNamed(context, GameScreen.routeName);
    });
  }
}
