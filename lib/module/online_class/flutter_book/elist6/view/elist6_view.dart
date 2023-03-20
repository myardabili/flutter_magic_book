import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist6_controller.dart';

class EList6View extends StatefulWidget {
  const EList6View({Key? key}) : super(key: key);

  Widget build(context, EList6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EList6"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sneakers",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                "981 items",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 42,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey[900],
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Expanded(
                              child: Text("Sort by"),
                            ),
                            Icon(
                              Icons.sort,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 42,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey[900],
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Expanded(
                              child: Text("Filter"),
                            ),
                            Icon(
                              Icons.tune,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                itemCount: controller.products.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  return Padding(
                    padding: const EdgeInsets.only(top: 14.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
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
                                height: 4.0,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    size: 20.0,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20.0,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20.0,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20.0,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20.0,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "34 reviews",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 14.0,
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EList6View> createState() => EList6Controller();
}
