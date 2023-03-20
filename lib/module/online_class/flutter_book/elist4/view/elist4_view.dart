import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist4_controller.dart';

class EList4View extends StatefulWidget {
  const EList4View({Key? key}) : super(key: key);

  Widget build(context, EList4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EList4"),
        actions: const [
          Icon(
            Icons.sort,
            size: 24.0,
          ),
          SizedBox(
            width: 8.0,
          ),
          Icon(
            Icons.tune,
            size: 24.0,
          ),
          SizedBox(
            width: 8.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: controller.products.length,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              var item = controller.products[index];
              return Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            item["photo"],
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["product_name"],
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            item["category"],
                            style: const TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "\$${item["price"]}",
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                                child: Stack(
                                  children: const [
                                    Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                                child: Stack(
                                  children: const [
                                    Center(
                                      child: Icon(
                                        Icons.remove,
                                        size: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 12.0,
                      child: Icon(
                        Icons.favorite,
                        size: 14.0,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  State<EList4View> createState() => EList4Controller();
}
