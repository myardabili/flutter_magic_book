import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ELogin1View extends StatefulWidget {
  const ELogin1View({Key? key}) : super(key: key);

  Widget build(context, ELogin1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin1"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Expanded(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 34.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 28.0,
                  child: Icon(
                    Icons.book_outlined,
                    size: 34.0,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const Text(
              "to MagicBook",
              style: TextStyle(
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            const Text(
              "Biggest collection of 300+ layouts",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            const Text(
              "for iOS prototyping.",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                  ),
                  onChanged: (value) {},
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                  onChanged: (value) {},
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.green,
                ),
                onPressed: () {},
                child: const Text("Login"),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Expanded(
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
                child: const Text("Sign Up"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ELogin1View> createState() => ELogin1Controller();
}
