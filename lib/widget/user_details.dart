import 'package:flutter/material.dart';
import 'package:list_grid_view_hero/design/custom_text.dart';
import 'package:list_grid_view_hero/model/user_model.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key,required this.myUser,required this.fromListTile}) : super(key: key);

  final bool fromListTile;
  final UserModel myUser;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Hero(
                tag: fromListTile?myUser.name:myUser.address,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(myUser.img)
                    )
                  ),
                ),
              )
            ),
            CustomText(text: myUser.name, clr: Colors.black, fs: 30, fw: FontWeight.bold),
            CustomText(text: myUser.address, clr: Colors.black, fs: 20, fw: FontWeight.normal),
            CustomText(text: myUser.isFemale?'Female':'Male', clr: Colors.black, fs: 20, fw: FontWeight.normal),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text('Back')
            ),
            Expanded(
                flex: 1,
                child: Container()
            ),
          ],
        ),
      ),
    );
  }
}
