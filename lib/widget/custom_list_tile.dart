import 'package:flutter/material.dart';
import 'package:list_grid_view_hero/design/custom_text.dart';
import 'package:list_grid_view_hero/model/user_model.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key,required this.user}) : super(key: key);
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(0.5),
      margin: const EdgeInsets.only(top: 10,bottom: 10),
      padding: const EdgeInsets.only(top: 15,bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Hero(
            tag: user.name,
            child: CircleAvatar(
              backgroundImage: AssetImage(user.img),
            ),
          ),
          Column(
            children: [
              CustomText(text: user.name, clr: Colors.white, fs: 15, fw: FontWeight.bold),
              CustomText(text: user.address, clr: Colors.white60, fs: 12, fw: FontWeight.normal),
            ],
          ),
          CustomText(text: user.isFemale?'Female':'Male', clr: Colors.white70, fs: 12, fw: FontWeight.bold),

        ],
      ),
    );
  }
}
