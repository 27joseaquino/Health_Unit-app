import 'package:consulta_marcada/core/utils/navigator.dart';
import 'package:consulta_marcada/data/data.dart';
import 'package:consulta_marcada/ui/components/buttons/custom_floating_button.dart';
import 'package:consulta_marcada/ui/components/cards/room_card.dart';
import 'package:consulta_marcada/ui/pages/room/register_room_page.dart';
import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildListview(),
      floatingActionButton: CustomFloatingButton(
        onPressed: () => push(context, RegisterRoomPage()),
      ),
    );
  }

  Container buildListview() {
    return Container(
      padding: EdgeInsets.only(top: 16, left: 10, right: 10),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: rooms.length,
        itemBuilder: (context, index) {
          return RoomCard(rooms[index]);
        },
      ),
    );
  }
}
