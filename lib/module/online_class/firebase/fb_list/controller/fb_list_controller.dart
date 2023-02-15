import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbListController extends State<FbListView> implements MvcController {
  static late FbListController instance;
  late FbListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doGenerate() async {
    for (var i = 0; i < 10; i++) {
      await FirebaseFirestore.instance.collection("customers").add({
        "name": "Anang Hermansyah $i",
        "city": "Jakarta $i",
      });
    }
    showInfoDialog("Berhasil mengenerate data!");
  }
}
