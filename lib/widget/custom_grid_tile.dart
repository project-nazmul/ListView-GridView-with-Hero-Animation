import 'package:flutter/material.dart';
import 'package:list_grid_view_hero/design/custom_text.dart';
import 'package:list_grid_view_hero/model/user_model.dart';

class CustomGridTile extends StatelessWidget {
  const CustomGridTile({Key? key,required this.user}) : super(key: key);
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(0.5),
      margin: const EdgeInsets.only(right: 10,bottom: 10),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Expanded(flex:1,child: CustomText(text: user.name, clr: Colors.white, fs: 8, fw: FontWeight.normal)),
          Expanded(flex:2,
              child: Hero(
                tag: user.address,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(user.img)
                      )
                  ),
                ),
              )
          ),

        ],
      ),
    );
  }
}
