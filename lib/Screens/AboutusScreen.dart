import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Row(
              children: [
                Icon(
                  Icons.chevron_left,
                  size: width * 0.09,
                ),
                Text(
                  "About Us",
                  style: TextStyle(fontSize: width * 0.065),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                      size: width * 0.08,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: height * 0.035,
          ),
          ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 5,
              ),
              title: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")),
          SizedBox(
            height: height * 0.015,
          ),
          ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 5,
              ),
              title: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")),
          SizedBox(
            height: height * 0.015,
          ),
          ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 5,
              ),
              title: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ")),
        ],
      ),
    );
  }
}
