import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentindex = 0;
  List<Widget> pages = [
    Home(),
    Search(),
    Reels(),
    Profile(),
    Messages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Messages()),
                );
              },
              icon: Icon(
                Icons.message_outlined,
                color: Colors.white,
              )),
        ],
      ),
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: currentindex,
        onTap: (int i) {
          setState(() {
            currentindex = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          //BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: "New"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_sharp), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: 130,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.red,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_0.jpg'),
                                radius: 38,
                              ),
                            ),
                            Text("Stories")
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 5,
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: 30,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 400,
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg')),
                              title: Text(
                                "Albin",
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                              subtitle: Text(
                                "Suggested for you",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 12),
                              ),
                              trailing: IconButton(
                                icon: Icon(Icons.more_vert_rounded),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              height: 250,
                              width: 350,
                              decoration: BoxDecoration(
                                color: const Color(0xff7c94b6),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            Container(
                              height: 30,
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.favorite),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.mms_sharp),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.send_outlined),
                                    onPressed: () {},
                                  ),
                                  Expanded(child: SizedBox()),
                                  IconButton(
                                    icon: Icon(Icons.flag),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "6.5k Likes",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 12),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    text: '',
                                    style: DefaultTextStyle.of(context).style,
                                    children: [
                                      TextSpan(
                                          text: 'Anu_manu579',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 12)),
                                      TextSpan(
                                          text:
                                              ' and 569990 others liked this post!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w100,
                                              fontSize: 12))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "1 day ago..",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        color: Colors.grey,
                                        fontSize: 12),
                                  )),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Messages extends StatelessWidget {
  Messages({super.key});

  List<Chat> clist = [
    Chat(
        name: "Atlanta",
        readstatus: true,
        lastmsg: "Hy",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXbB7NfbmncJHJt9To010qroAGSDxbxZgmAg&s",
        time: "4min ago"),
    Chat(
        name: "dead_writer",
        readstatus: false,
        lastmsg: "ok",
        img: "",
        time: "1 hr"),
    Chat(
        name: "Faris",
        readstatus: true,
        lastmsg: "Are you okey",
        img:
            "https://images.ctfassets.net/hrltx12pl8hq/4MFiRr9vFnbWzYoNSPiYXy/fca130dd40da59b06e83ee8d5789a23e/file-converter-shutterstock.jpg",
        time: "4 hr"),
    Chat(name: "Ansha", readstatus: false, lastmsg: "See you later", img: "https://i0.wp.com/smsforwishes.com/wp-content/uploads/2022/10/4e9f035d05faeb0561835197a51a51f5.jpeg?resize=235%2C294&quality=100&ssl=1", time: "5 hr"),
    Chat(
        name: "Aneena",
        readstatus: true,
        lastmsg: "Hy",
        img:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXbB7NfbmncJHJt9To010qroAGSDxbxZgmAg&s",
        time: "4min ago"),
    Chat(
        name: "Manu",
        readstatus: false,
        lastmsg: "ok",
        img: "",
        time: "1 hr"),
    Chat(
        name: "Mini Joseph",
        readstatus: true,
        lastmsg: "Are you okey",
        img:
        "https://images.ctfassets.net/hrltx12pl8hq/4MFiRr9vFnbWzYoNSPiYXy/fca130dd40da59b06e83ee8d5789a23e/file-converter-shutterstock.jpg",
        time: "4 hr"),
    Chat(name: "erfana", readstatus: false, lastmsg: "See you later", img: "https://i0.wp.com/smsforwishes.com/wp-content/uploads/2022/10/4e9f035d05faeb0561835197a51a51f5.jpeg?resize=235%2C294&quality=100&ssl=1", time: "5 hr")

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: clist.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage("${clist[index].img}"),
          ),
          title: Text("${clist[index].name}"),
          subtitle: Text("${clist[index].lastmsg}"),
          trailing: Column(
            children: [
              Text("${clist[index].time}"),
              clist[index].readstatus
                  ? Icon(
                      Icons.done_all,
                      color: Colors.blue,
                    )
                  : Icon(Icons.done_all, color: Colors.grey)
            ],
          ),
        );
      },
    ));
  }
}

class Search extends StatelessWidget {
  Search({super.key});
  List<String> images = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg",
    "https://cdn4.sharechat.com/img_982909_2bd42bfe_1669053979725_sc.jpg?tenant=sc&referrer=tag-service&f=725_sc.jpg",
    "https://images.pexels.com/photos/1391498/pexels-photo-1391498.jpeg?cs=srgb&dl=pexels-soldiervip-1391498.jpg&fm=jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg",
    "https://cdn4.sharechat.com/img_982909_2bd42bfe_1669053979725_sc.jpg?tenant=sc&referrer=tag-service&f=725_sc.jpg",
    "https://images.pexels.com/photos/1391498/pexels-photo-1391498.jpeg?cs=srgb&dl=pexels-soldiervip-1391498.jpg&fm=jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg",
    "https://cdn4.sharechat.com/img_982909_2bd42bfe_1669053979725_sc.jpg?tenant=sc&referrer=tag-service&f=725_sc.jpg",
    "https://images.pexels.com/photos/1391498/pexels-photo-1391498.jpeg?cs=srgb&dl=pexels-soldiervip-1391498.jpg&fm=jpg",
  ];
  List<String> names = ["Ansha", "arya", "Aneena", "faris", "Albin", "Rihan"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 2),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: images.length,
        (context, index) => Tile(names: images[index]),
      ),
    ));
  }
}

class Tile extends StatelessWidget {
  String names;
  Tile({super.key, required this.names});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: extent,
      // color: Colors.lightGreen,
      child: Center(
        child: Card(
          child: Tooltip(
            child: Image.network("$names"),
            message: "How is this",
          ),
          elevation: 50,
        ),
      ),
    );
  }
}

class Chat {
  late String name, lastmsg, time, img;
  late bool readstatus;

  Chat(
      {required this.name,
      required this.readstatus,
      required this.lastmsg,
      required this.img,
      required this.time}) {}
}

class Reels extends StatefulWidget {
  const Reels({super.key});

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  late String videoUrl;
  late int index;
  late String thumbNailUrl;
  late bool isPositioned;
  late ObjectKey key;
  
  myVideoWidget({required dynamic videoUrl, required int index, required String thumbNailUrl, required bool isPositioned, required ObjectKey key,}) {
    // TODO: implement MyVideoWidget
    throw UnimplementedError();
  }
  List<String> _videoUrls = [
    "https://www.instagram.com/reel/C71j-T5yJ1-/?utm_source=ig_web_copy_link",
    "https://www.youtube.com/shorts/BlTkpdb3IMg?feature=share",
    "https://www.youtube.com/shorts/fVvNPoQIqnY?feature=share",
    "https://www.youtube.com/shorts/s0ef9NmesrY?feature=share",
    "https://www.youtube.com/shorts/Y1EgwWTxrbs?feature=share",
    "https://www.youtube.com/shorts/FUgqKopZkJ0?feature=share"
  ];

  final ScrollController _scrollController = ScrollController();

  double _offset = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_function);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print("Screen height:${MediaQuery.of(context).size.height} ");
    return Scaffold(
        appBar: AppBar(),
        extendBodyBehindAppBar: true,
        body: ListView.builder(
            itemCount: _videoUrls.length,
            addAutomaticKeepAlives: false,
            controller: _scrollController,
            itemBuilder: (ctx, index) {
              print(
                  " $index: Offset ($_offset) is between  ${(250 * index) - 140} and  ${(250 * index)}");

              return myVideoWidget(
                videoUrl: _videoUrls[index],
                index: index,
                thumbNailUrl: "thumbNail_$index",
                isPositioned:
                _offset <= (250 * index) && _offset >= (250 * index) - 140,
                key: ObjectKey(_videoUrls[index]),
              );
            }));
  }

  _function() {
    // The offset is mainly on the Y-axis (i.e x = 0) since it is a vertical list
    if (mounted)
      setState(() {
        _offset = _scrollController.offset;
      }
    );
  }
}


class Profile extends StatefulWidget {
  Profile({super.key});

  late String name;
  late String Bio;
  late String gender;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void _showalert(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Exit?"),
          content: Text("do you want to exit"),
          actions: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Yes")),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("No")),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("cancel")),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anu_Manu579"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("${widget.name}"),
            SizedBox(
              height: 15,
            ),
            Text("${widget.Bio}"),
            SizedBox(
              height: 15,
            ),
            Text("${widget.gender}"),
            SizedBox(
              height: 15,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) =>  Home()),
                );
                _showalert(context);
              },
              child: Text("back"),
            ),
          ],
        ),
      ),
    );
  }
}

