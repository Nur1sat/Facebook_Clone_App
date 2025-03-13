import 'actionbtn.dart';
import 'feedbox.dart';
import 'storytile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgBlack = Color(0xFF1a1a1a);
  Color mainBlack = Color(0xFF262626);
  Color fbBlue = Color(0xFF2D88FF);
  Color mainGrey = Color(0xFF505050);

  List<String> avatarUrl = [
    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80",
    "https://media.licdn.com/dms/image/v2/C4D0BAQFQWpVqplhTNw/company-logo_200_200/company-logo_200_200/0/1675919090704/jihc_logo?e=1749686400&v=beta&t=4agV4YnI7fNBjbDkjFdQg9gvwxQmSgeTvUFrnOl8Etw",
    "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
    "https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  ];
  List<String> storyUrl = [
    "https://images.unsplash.com/photo-1600055882386-5d18b02a0d51?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=621&q=80",
    "https://cloudt.edupage.org/cloud?z%3AMQp6QxfV5xt%2BMp4MRxOvPiZlgvQRWUoWOEOGlEhvMTRYObw06N7ew74vUUsPsrmQGdwvrziePajk7d6p4yKOlvh%2F5PRob%2FrhrI3TStmPIukcgy98SHYig6C1bmmtMz9B",
    "https://images.unsplash.com/photo-1600008646149-eb8835bd979d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=666&q=80",
    "https://images.unsplash.com/photo-1502920313556-c0bbbcd00403?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgBlack,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mainBlack,
        title: Text("Facebook", style: TextStyle(color: fbBlue)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: mainBlack,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 10.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: NetworkImage(avatarUrl[0]),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 25.0),
                                hintText: "Post something...",
                                filled: true,
                                fillColor: mainGrey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Divider(color: mainGrey, thickness: 1.5),
                      Row(
                        children: [
                          actionButton(
                            Icons.live_tv,
                            "Live",
                            Color(0xFFF23E5C),
                          ),
                          actionButton(
                            Icons.image,
                            "Picture",
                            Color(0xFF58C472),
                          ),
                          actionButton(
                            Icons.insert_emoticon,
                            "Activity",
                            Color(0xFFF8C03E),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10.0),
              Container(
                height: 160.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    storyTile(avatarUrl[0], storyUrl[0], "Ling chang"),
                    storyTile(avatarUrl[1], storyUrl[1], "College"),
                    storyTile(avatarUrl[2], storyUrl[2], "Ling chang"),
                  ],
                ),
              ),
              SizedBox(height: 20.0),

              feedBox(avatarUrl[0], "Noname", "6 min", "I like read book", ""),
              feedBox(
                avatarUrl[1],
                "Jihc",
                "6 min",
                "Hello Everyone!",
                storyUrl[2],
              ),
              feedBox(
                avatarUrl[2],
                "Someone",
                "Yesterday",
                "I'm Noname and I have a Dream",
                storyUrl[1],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
