import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist3_controller.dart';

class EList3View extends StatefulWidget {
  const EList3View({Key? key}) : super(key: key);

  Widget build(context, EList3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EList3"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Polo Shirts",
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            const Text(
              "617 items",
              style: TextStyle(
                fontSize: 16.0,
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
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.blueGrey[900],
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text("SORT BY"),
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
                  width: 12.0,
                ),
                Expanded(
                  child: SizedBox(
                    height: 42,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.blueGrey[900],
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text("FILTERS"),
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
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return Card(
                    child: Container(
                      child: Row(
                        children: [
                          Image.network(
                            item["photo"],
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 14.0,
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
                                Text(
                                  item["category"],
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                Text(
                                  "\$${item["price"]}",
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
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
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<EList3View> createState() => EList3Controller();
}
