import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dash extends StatefulWidget {
  const dash({super.key});

  @override
  State<dash> createState() => _dashState();
}

class _dashState extends State<dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
            // ListView(
            Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  // bottomLeft: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                    title: Text('Hello Ahad!',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: Colors.white)),
                    subtitle: Text('Good Morning',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Colors.white54)),
                    trailing: const CircleAvatar(
                      radius: 30,
                      // backgroundImage: AssetImage('assets/images/user.JPG'),
                    ),
                  ),
                  const SizedBox(height: 30)
                ],
              ),
            ),
            Container(
              // width: double.infinity,
              padding: const EdgeInsets.only(left: 0),
              color: Theme.of(context).primaryColor,
              child: Container(
                width: double.infinity,
                height:  420,
                // padding: const EdgeInsets.symmetric(horizontal: 30),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(40)),
                ),
            //   ),
            // ),
            //     child:
          child:  Expanded(
              child: GridView.count(
                padding:
                    const EdgeInsets.only(right: 30, left: 30, bottom: 10, top: 10),
                // shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard('users', CupertinoIcons.play_rectangle,
                      Colors.deepOrange),
                  itemDashboard(
                      'Analytics', CupertinoIcons.graph_circle, Colors.green),
                  itemDashboard(
                      'Audience', CupertinoIcons.person_2, Colors.purple),
                  itemDashboard(
                      'Comments', CupertinoIcons.chat_bubble_2, Colors.brown),
                  itemDashboard('Revenue', CupertinoIcons.money_dollar_circle,
                      Colors.indigo),
                  itemDashboard(
                      'Upload', CupertinoIcons.add_circled, Colors.teal),
                  itemDashboard(
                      'About', CupertinoIcons.question_circle, Colors.blue),
                  itemDashboard(
                      'Contact', CupertinoIcons.phone, Colors.pinkAccent),
                ],
              ),
            ),
            ),
            ),
            const SizedBox(height: 20),
          ],
        ));
  }

  itemDashboard(String title, IconData iconData, Color background) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).primaryColor.withOpacity(.2),
                  spreadRadius: 2,
                  blurRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: background,
                  shape: BoxShape.circle,
                ),
                child: Icon(iconData, color: Colors.white)),
            const SizedBox(height: 8),
            Text(title.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
      );
}
