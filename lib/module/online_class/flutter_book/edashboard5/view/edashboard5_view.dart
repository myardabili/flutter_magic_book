import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard5_controller.dart';

class EDashboard5View extends StatefulWidget {
  const EDashboard5View({Key? key}) : super(key: key);

  Widget build(context, EDashboard5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDashboard5"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.network(
                      "https://icons.iconarchive.com/icons/seanau/kungfu-panda/256/Squirrel-icon.png",
                      width: 32.0,
                      height: 32.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text(
                      "KungFu Store",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.add,
                      size: 24.0,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    const Icon(
                      Icons.search,
                      size: 24.0,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    const Icon(
                      Icons.more_horiz,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 30.0,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Add Story",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 90.0,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[500],
                                    radius: 30.0,
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.grey[900],
                                      size: 30.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  const Text(
                                    "Person Name",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
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
              const SizedBox(
                height: 12.0,
              ),
              const Divider(
                thickness: 10,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[500],
                      radius: 30.0,
                      child: Icon(
                        Icons.person,
                        size: 34.0,
                        color: Colors.grey[900],
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Maud Matthews",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              "with",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              "Blake Abbott",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: const [
                            Text(
                              "2 min ago",
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.location_on,
                              size: 12.0,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "London, UK",
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.more_horiz,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 160.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: const [
                    Icon(
                      color: Colors.grey,
                      Icons.heart_broken_sharp,
                      size: 24.0,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Icon(
                      color: Colors.grey,
                      Icons.comment_sharp,
                      size: 24.0,
                    ),
                    Spacer(),
                    Icon(
                      color: Colors.grey,
                      Icons.file_upload_outlined,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: const [
                    Text(
                      "831 likes",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Text(
                      "61 comments",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "8 shares",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Divider(
                thickness: 10,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[500],
                      radius: 30.0,
                      child: Icon(
                        Icons.person,
                        size: 34.0,
                        color: Colors.grey[900],
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Harriet Allen",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              "is",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Icon(
                              Icons.sentiment_satisfied_alt,
                              size: 24.0,
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              "feeling happy",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Text(
                          "3 hours ago",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.more_horiz,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "Of all of the celestial bodies that capture our attention and fascination as astronomers, none has a greater influence on life on planet Earth than it’s own satellite, the…",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: const [
                    Icon(
                      color: Colors.grey,
                      Icons.heart_broken_sharp,
                      size: 24.0,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Icon(
                      color: Colors.grey,
                      Icons.comment_sharp,
                      size: 24.0,
                    ),
                    Spacer(),
                    Icon(
                      color: Colors.grey,
                      Icons.file_upload_outlined,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: const [
                    Text(
                      "831 likes",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Text(
                      "61 comments",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "8 shares",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Divider(
                thickness: 10,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EDashboard5View> createState() => EDashboard5Controller();
}
