import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elogin9_view.dart';

class ELogin9Controller extends State<ELogin9View> implements MvcController {
  static late ELogin9Controller instance;
  late ELogin9View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
