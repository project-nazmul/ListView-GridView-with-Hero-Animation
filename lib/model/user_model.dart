class UserModel{
  UserModel({required this.name,required this.address,required this.img,required this.isFemale});
  String name;
  String address;
  String img;
  bool isFemale;
  
  static List userList = [
    UserModel(isFemale: false,name: 'Nazmul Khan 1', address: 'Dhaka 1', img: 'nazmul/n1.jpg'),
    UserModel(isFemale: false,name: 'Nazmul Khan 2', address: 'Dhaka 2', img: 'nazmul/n2.jpg'),
    UserModel(isFemale: false,name: 'Nazmul Khan 3', address: 'Dhaka 3', img: 'nazmul/n3.jpg'),
    UserModel(isFemale: false,name: 'Nazmul Khan 4', address: 'Dhaka 4', img: 'nazmul/n4.jpg'),
    UserModel(isFemale: false,name: 'Nazmul Khan 5', address: 'Dhaka 5', img: 'nazmul/n5.jpg'),
    UserModel(isFemale: false,name: 'Nazmul Khan 6', address: 'Dhaka 6', img: 'nazmul/n6.jpg'),
    UserModel(isFemale: false,name: 'Nazmul Khan 7', address: 'Dhaka 7', img: 'nazmul/n1.jpg'),
    UserModel(isFemale: false,name: 'Nazmul Khan 8', address: 'Dhaka 8', img: 'nazmul/n2.jpg'),
    UserModel(isFemale: false,name: 'Nazmul Khan 9', address: 'Dhaka 9', img: 'nazmul/n3.jpg'),
    UserModel(isFemale: false,name: 'Nazmul Khan 10', address: 'Dhaka 10', img: 'nazmul/n4.jpg'),
    UserModel(isFemale: false,name: 'Nazmul Khan 11', address: 'Dhaka 11', img: 'nazmul/n5.jpg'),
    UserModel(isFemale: false,name: 'Nazmul Khan 12', address: 'Dhaka 12', img: 'nazmul/n6.jpg'),
  ];
}