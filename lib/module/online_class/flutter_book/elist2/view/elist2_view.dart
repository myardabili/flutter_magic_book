import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist2_controller.dart';

class EList2View extends StatefulWidget {
  const EList2View({Key? key}) : super(key: key);

  Widget build(context, EList2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: const [
            Text(
              "Jackets",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "81 items",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ],
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.9,
                  crossAxisCount: 1,
                  mainAxisSpacing: 16,
                ),
                itemCount: controller.products.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage(
                          item["photo"],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                        const Positioned(
                          top: 4,
                          right: 4,
                          child: CircleAvatar(
                            radius: 16.0,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.more_horiz,
                              size: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                item["product_name"],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                item["category"],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "\$${item["price"]}",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    "\$${item["price"]}",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                            ],
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: "btn1",
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              onPressed: () {},
              child: const Icon(Icons.sort),
            ),
            FloatingActionButton(
              heroTag: "btn2",
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              child: const Icon(Icons.tune),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  @override
  State<EList2View> createState() => EList2Controller();
}
