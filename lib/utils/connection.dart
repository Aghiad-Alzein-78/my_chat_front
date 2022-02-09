import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';
// import 'package:socket_io_client/socket_io_client.dart%20';

void connectTest(String ip, int port) {
  print("Pressed");
  try {
    IO.Socket socket = IO.io(
        'http://192.168.1.110:3000',
        OptionBuilder()
            .setTransports(['websocket']) // for Flutter or Dart VM // optional
            .build());
    socket.connect();
    print(socket.flags);
    print(socket.connected);
    socket.onConnect((_) => {
          print("connected"),
        });
  } catch (e) {
    print(e);
  }
}
