import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist7_controller.dart';

class EList7View extends StatefulWidget {
  const EList7View({Key? key}) : super(key: key);

  Widget build(context, EList7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EList7"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Shoes",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                "3.1K items",
                style: TextStyle(
                  fontSize: 12.0,
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
                    width: 12.0,
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
              const SizedBox(
                height: 12.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.64,
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
                          width: 185,
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
                                right: 10,
                                top: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 14.0,
                                  child: Icon(
                                    Icons.more_horiz,
                                    size: 14.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
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
                        Row(
                          children: [
                            Text(
                              "\$${item["price"]}",
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "\$${item["price"]}",
                              style: const TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.green,
                              size: 20.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.green,
                              size: 20.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.green,
                              size: 20.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.green,
                              size: 20.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.green,
                              size: 20.0,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        const Text(
                          "34 reviews",
                          style: TextStyle(
                            fontSize: 12.0,
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
  State<EList7View> createState() => EList7Controller();
}
