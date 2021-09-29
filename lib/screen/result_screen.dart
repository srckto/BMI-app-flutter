import 'package:flutter/material.dart';

import '../palette.dart';

class Result extends StatefulWidget {
  final bool isMeal;
  final double height;
  final int weight;
  final int age;

  const Result({
    Key? key,
    required this.isMeal,
    required this.height,
    required this.weight,
    required this.age,
  }) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  double _bmi = 0;
  String _state = "Normal";

  @override
  void initState() {
    super.initState();
    getBmi();
    getState();
  }


  void getBmi() {
    double newHeight = widget.height / 100;

    setState(() {
      _bmi = (widget.weight) / (newHeight * newHeight);
    });
  }

  void getState() {
    if (_bmi < 18.5) {
      setState(() {
        _state = "UnderWeight";
      });
    } else if (_bmi >= 18.5 && _bmi < 24.9) {
      setState(() {
        _state = "Normal";
      });
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      setState(() {
        _state = "OverWirght";
      });
    } else {
      setState(() {
        _state = "Obese";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverAppBar(
                floating: true,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                title: Text(
                  "Result",
                  style: TextStyle(
                    color: k_Swatch_5,
                    fontSize: 22,
                    shadows: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 1,
                        offset: Offset(0, 0),
                        // spreadRadius: 0.2,
                      ),
                    ],
                  ),
                ),
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios_new),
                  color: k_Swatch_5,
                )),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Container(
                  width: double.infinity,
                  height: 180,
                  decoration: k_boxDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Your BMI", style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 20)),
                      Text("${_bmi.toStringAsFixed(1)}", style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 45)),
                      Text(_state, style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 20, color: k_Swatch_3)),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration: k_boxDecoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 15),
                      Text(
                        "Your Detail",
                        style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 19),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Your Height", style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 20)),
                            Text("${widget.height}", style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 20)),
                          ],
                        ),
                      ),
                      Divider(thickness: 2, endIndent: 15, indent: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Your Weight", style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 20)),
                            Text("${widget.weight}", style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 20)),
                          ],
                        ),
                      ),
                      Divider(thickness: 2, endIndent: 15, indent: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Your Age", style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 20)),
                            Text("${widget.age}", style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 20)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
