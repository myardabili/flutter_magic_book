import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard4_controller.dart';

class EDashboard4View extends StatefulWidget {
  const EDashboard4View({Key? key}) : super(key: key);

  Widget build(context, EDashboard4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDashboard4"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Feed",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey[800],
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "Search?",
                          hintStyle: TextStyle(
                            color: Colors.grey[800],
                          ),
                          hoverColor: Colors.transparent,
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                    Icon(
                      Icons.mic,
                      color: Colors.grey[800],
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: 160.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 20,
                          left: 0,
                          right: 0,
                          child: Column(
                            children: const [
                              CircleAvatar(
                                radius: 16.0,
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "Add Story",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 160.0,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            width: MediaQuery.of(context).size.width / 3.5,
                            height: 160.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  16.0,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 20,
                                  left: 0,
                                  right: 0,
                                  child: Column(
                                    children: const [
                                      CircleAvatar(
                                        radius: 16.0,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6.0,
                                      ),
                                      Text(
                                        "Add Story",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Divider(
                thickness: 1,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[400],
                    child: Icon(
                      Icons.person,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  const Text(
                    "Maud Matthews",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.grey[800],
                    child: const Icon(
                      size: 20.0,
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "2 min ago",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                    size: 24.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                "Never put off till tomorrow what may be done day after tomorrow just as well.",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  const Text(
                    "89.4K likes",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const Expanded(
                    child: Text(
                      "93 comments",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: Icon(
                      Icons.heart_broken,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: Icon(
                      Icons.comment,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: Icon(
                      Icons.file_upload_outlined,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[400],
                    child: Icon(
                      Icons.person,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  const Text(
                    "Emily Doyle",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  const Spacer(),
                  const Text(
                    "1 hour ago",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                    size: 24.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.ibb.co/jffsKhH/photo-1587386730874-f9f371bf267e-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
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
                  const SizedBox(
                    width: 12.0,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 160,
                        height: 90,
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
                      const SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        width: 160,
                        height: 90,
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
                        child: Stack(
                          children: const [
                            Center(
                              child: Text(
                                "+6",
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  const Text(
                    "5 likes",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const Expanded(
                    child: Text(
                      "1 comment",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: Icon(
                      Icons.heart_broken,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: Icon(
                      Icons.comment,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: Icon(
                      Icons.file_upload_outlined,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Divider(
                thickness: 1,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          //
        },
      ),
    );
  }

  @override
  State<EDashboard4View> createState() => EDashboard4Controller();
}
