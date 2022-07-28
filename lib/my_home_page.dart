import 'package:flutter/material.dart';
import 'package:list_grid_view_hero/model/user_model.dart';
import 'package:list_grid_view_hero/widget/custom_grid_tile.dart';
import 'package:list_grid_view_hero/widget/custom_list_tile.dart';
import 'package:list_grid_view_hero/widget/user_details.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List myList = UserModel.userList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          transitionDuration: const Duration(seconds: 2),
                          pageBuilder: (context, animation, secondaryAnimation) => UserDetails(myUser: myList[index],fromListTile: true),)
                          //MaterialPageRoute(builder: (context) => UserDetails(myUser: myList[index],fromListTile: true),),
                      );
                    },
                    child: CustomListTile(user: myList[index]),
                  );
                },
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.blue.withOpacity(0.1),
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: myList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserDetails(myUser: myList[index],fromListTile: false),));
                      },
                      child: CustomGridTile(user: myList[index]),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
