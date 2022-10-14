import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Map<String, dynamic>> list = [
    {
      "title": "Your orders has been picked up",
      "Subtitle": "Now",
    },
    {
      "title": "Your order has been delivered",
      "Subtitle": "1 h ago",
    },
    {
      "title": "Lorem ipsum dolor sit amet consectetur ",
      "Subtitle": "3 h ago",
    },
    {
      "title": "Lorem ipsum dolor sit amet consectetur",
      "Subtitle": "5h ago",
    },
    {
      "title": "Lorem ipsum dolor sit amet consectetur ",
      "Subtitle": "05 Sep 2020"
    },
    {
      "title": "Lorem ipsum dolor sit amet consectetur",
      "Subtitle": "12 Aug 2020"
    },
    {
      "title": "Lorem ipsum dolor sit amet consectetur ",
      "Subtitle": "20 Jul 2020"
    },
    {
      'title': 'Lorem ipsum dolor sit amet consectetur ',
      'Subtitle': '12 Jul 2020'
    },
  ];

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
                  size: width * 0.08,
                ),
                Text(
                  "Notification",
                  style: TextStyle(fontSize: width * 0.055),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                      size: width * 0.07,
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 8,
              padding: EdgeInsets.symmetric(vertical: 10),
              separatorBuilder: (BuildContext context, int index) => Divider(
                color: Colors.grey,
                thickness: 2,
                height: 0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor: (index == 1 || index == 4 || index == 5)
                      ? Colors.grey.shade300
                      : Colors.white,
                  leading: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.red,
                  ),
                  title: Text(
                    list[index]["title"],
                    style: TextStyle(fontSize: width * 0.045),
                  ),
                  subtitle: Text(list[index]["Subtitle"],
                      style: TextStyle(fontSize: width * 0.035)),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
