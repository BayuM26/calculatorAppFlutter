import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_calculate_app/controller/controller.dart';
import 'package:flutter_calculate_app/page/component/button.dart';
import 'package:flutter_calculate_app/page/component/input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  final Controller controller = Controller();

  @override
  void setState(VoidCallback fn) {
    _controller.text = '0';
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Input(
              controller: _controller, 
              text: '',
            ),
          ),

          Expanded(
            child:GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, //jumlah kolom
                childAspectRatio: 2.0,
              ),
              
              children: [
                Button(
                  text: 'AC', 
                  onPressed: () => controller.clearButton(_controller),
                ),
                Button(
                  text: 'C', 
                  onPressed: () => controller.deleteButton(_controller),
                ),
                Button(
                  text: '%', 
                  onPressed: () => controller.actionButton(' % ', _controller),
                ),
                Button(
                  text: '/', 
                  onPressed: () => controller.actionButton(' / ', _controller),
                ),

                Button(
                  text: '7', 
                  onPressed: () => controller.actionButton('7', _controller),
                ),
                Button(
                  text: '8', 
                  onPressed: () => controller.actionButton('8', _controller),
                ),
                Button(
                  text: '9', 
                  onPressed: () => controller.actionButton('9', _controller),
                ),
                Button(
                  text: 'x', 
                  onPressed: () => controller.actionButton(' x ', _controller),
                ),

                Button(
                  text: '4', 
                  onPressed: () => controller.actionButton('4', _controller),
                ),
                Button(
                  text: '5', 
                  onPressed: () => controller.actionButton('5', _controller),
                ),
                Button(
                  text: '6', 
                  onPressed: () => controller.actionButton('6', _controller),
                ),
                Button(
                  text: '-', 
                  onPressed: () => controller.actionButton(' - ', _controller),
                ),

                Button(
                  text: '1', 
                  onPressed: () => controller.actionButton('1', _controller),
                ),
                Button(
                  text: '2', 
                  onPressed: () => controller.actionButton('2', _controller),
                ),
                Button(
                  text: '3', 
                  onPressed: () => controller.actionButton('3', _controller),
                ),
                Button(
                  text: '+', 
                  onPressed: () => controller.actionButton(' + ', _controller),
                ),

                Button(
                  text: '0', 
                  onPressed: () => controller.actionButton('0', _controller),
                ),
                Button(
                  text: '0', 
                  onPressed: () => controller.actionButton('0', _controller),
                ),
                Button(
                  text: ',', 
                  onPressed: () => controller.actionButton(',', _controller),
                ),
                Button(
                  text: '=', 
                  onPressed: () => controller.hasil(_controller),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}