import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist5_controller.dart';

class EList5View extends StatefulWidget {
  const EList5View({Key? key}) : super(key: key);

  Widget build(context, EList5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EList5"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Clothing",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                "73.3K items",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 32.0,
                child: ListView.builder(
                  itemCount: controller.products.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = controller.products[index];
                    bool selected = index == 0;

                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      child: Center(
                        child: Text(
                          item["category"],
                          style: TextStyle(
                            color: selected ? Colors.green : Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.65,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: controller.products.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 160,
                          width: 180,
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
                          child: Stack(
                            children: const [
                              Positioned(
                                right: 8,
                                top: 8,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 14.0,
                                  child: Icon(
                                    Icons.more_horiz,
                                    size: 16.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
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
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
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
  State<EList5View> createState() => EList5Controller();
}
