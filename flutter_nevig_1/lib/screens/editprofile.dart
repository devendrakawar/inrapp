import 'package:flutter/material.dart';
import 'package:flutter_nevig_1/pro.dart';
import 'package:flutter_nevig_1/screens/inr_pro.dart';
import 'package:flutter_nevig_1/screens/profile.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'dart:io';

class Editprofile extends StatefulWidget {
  User? user;

  Editprofile(User? user);
  @override
  State<Editprofile> createState() => _EditprofileState(this.user);
}

class _EditprofileState extends State<Editprofile> {
  var txtnamecontroller = TextEditingController();
  var txtmobilecontroller = TextEditingController();
  var txtemailcontroller = TextEditingController();
  File? pickedImage;
  User? user;
  Image? profileImage;

  _EditprofileState(this.user);
  static const String edit_profile =
      "https://developer.satmatgroup.com/Countree/public/api/edit_profile";

  static const String prof =
      "https://developer.satmatgroup.com/Countree/public/api/profile";

  @override
  void initState() {
    super.initState();

    getProfile();
  }

  getProfile() async {
    final response = await http.post(Uri.parse(prof), body: {"id": "1"});
    if (response.statusCode == 200) {
      final profile = profileFromJson(response.body);
      print(profile.user.name);
      user = profile.user;
      setuserDetails();
    }
  }

  void setuserDetails() {
    txtnamecontroller.text = user?.name ?? "";
    txtmobilecontroller.text = user?.mobile ?? "";
    txtemailcontroller.text = user?.email ?? "";
  }

  updateProfile(User user) async {
    String base64Image = "";
    if (pickedImage != null) {
      final bytes = pickedImage!.readAsBytesSync();
      base64Image = base64Encode(bytes);
    }
    var parameter = {
      "id": user.id.toString(),
      "name": user.name,
      "email": user.email,
      "mobile": user.mobile,
      "profile_image": base64Image.isEmpty ? user.profileImage : base64Image
    };
    final response = await http.post(Uri.parse(edit_profile), body: parameter);
    print(response.body);
    if (response.statusCode == 200) {
      print("successfully updated profile");
      print(response.body);
    } else {
      print("failed to update profile");
    }
  }

  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
        print('image picked');
        updateProfile(user!);
      });

      //Get.back();
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  setUserProfileData() {
    setState(() {
      profileImage = Image.network(user!.profileImage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.close, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          TextButton(
              onPressed: () {
                this.updateProfile(user!);
              },
              child: Text(
                'Update',
                style: TextStyle(color: Colors.white),
              ))
        ],
        backgroundColor: Colors.pink[800],
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                child: Image(
                  image: NetworkImage(user?.profileImage ?? ""),
                ),
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Container(
                child: RaisedButton(
                  child: Text('Edit'),
                  onPressed: () {
                    pickImage(ImageSource.gallery);
                  },
                ),
              ),
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                      controller: txtnamecontroller,
                      cursorColor: Colors.pink.shade800,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_circle,
                          color: Colors.pink[800],
                        ),
                        labelText: " Name",
                        labelStyle: TextStyle(color: Colors.pink.shade800),
                      )),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                      controller: txtemailcontroller,
                      cursorColor: Colors.pink.shade800,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.pink[800],
                        ),
                        labelText: "email",
                        labelStyle: TextStyle(color: Colors.pink.shade800),
                      )),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                      controller: txtmobilecontroller,
                      cursorColor: Colors.pink.shade800,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mobile_friendly,
                          color: Colors.pink[800],
                        ),
                        labelText: "Mobile",
                        labelStyle: TextStyle(color: Colors.pink.shade800),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
