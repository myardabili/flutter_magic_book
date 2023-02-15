import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ovh4_controller.dart';

class Ovh4View extends StatefulWidget {
  const Ovh4View({Key? key}) : super(key: key);

  Widget build(context, Ovh4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ovh4"),
        actions: const [],
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                ),
              ),
              Container(
                height: 100,
                width: 2000,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ],
          ),
          const Divider(),
          const Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                ),
              ),
              Container(
                height: 100,
                width: 2000,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ],
          ),
          const Divider(),
          const Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                ),
              ),
              Container(
                height: 100,
                width: 2000,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  State<Ovh4View> createState() => Ovh4Controller();
}
