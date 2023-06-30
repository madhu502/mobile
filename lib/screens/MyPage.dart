import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(),

              Text("My Name", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("My Description"),


              ButtonWidget(),

              StoryWidget(),

              GridView.count(

                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                shrinkWrap: true,
                crossAxisSpacing: 20,
                mainAxisSpacing: 30,

              children: [
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),

              ],)


            ],
          ),
        ),
      ) ,

    );
  }
}

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                ),
                Text("My Stories"),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                ),
                Text("My Stories"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                ),
                Text("My Stories"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                ),
                Text("My Stories"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                ),
                Text("My Stories"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                ),
                Text("My Stories"),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
                ),
                Text("My Stories"),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Follow"))),
        SizedBox(width: 10,),

        ElevatedButton(onPressed: (){}, child: Text("Message")),
      ],
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 80,
          width: 80,
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo"),
          ),
        ),
        Column(
          children: [
            Text("20"),
            Text("Posts"),
          ],
        ),

        Column(
          children: [
            Text("1M"),
            Text("Followers"),
          ],
        ),

        Column(
          children: [
            Text("2"),
            Text("Following"),
          ],
        ),
      ],
    );
  }
}
