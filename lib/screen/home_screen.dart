import 'package:bmi_app/palette.dart';
import 'package:bmi_app/screen/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isMeal = true;
  double _sliderHeight = 100;
  int _weight = 65;
  int _age = 20;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isMeal = true;
                        });
                      },
                      child: Container(
                        width: _size.width * 0.43,
                        height: 50,
                        decoration: BoxDecoration(
                          color: _isMeal ? k_Swatch_3 : k_Swatch_2,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 5,
                              offset: Offset(-3.5, -2.8),
                              spreadRadius: 0.2,
                            ),
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 6,
                              offset: Offset(1, 2),
                              spreadRadius: 0.2,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Male",
                            style: _isMeal ? Theme.of(context).textTheme.headline1 : Theme.of(context).textTheme.headline2,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isMeal = false;
                        });
                      },
                      child: Container(
                        width: _size.width * 0.43,
                        height: 50,
                        decoration: BoxDecoration(
                          color: !_isMeal ? k_Swatch_3 : k_Swatch_2,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 5,
                              offset: Offset(-3.5, -2.8),
                              spreadRadius: 0.2,
                            ),
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 6,
                              offset: Offset(1, 2),
                              spreadRadius: 0.2,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Female",
                            style: !_isMeal ? Theme.of(context).textTheme.headline1 : Theme.of(context).textTheme.headline2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: _size.width * 0.43,
                      height: 400,
                      decoration: k_boxDecoration,
                      child: Column(
                        children: [
                          SizedBox(height: 6),
                          Text("Height", style: Theme.of(context).textTheme.headline3),
                          Expanded(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: SfSlider(
                                activeColor: k_Swatch_3,
                                inactiveColor: k_Swatch_5,
                                min: 100,
                                max: 240,
                                value: _sliderHeight,
                                showTicks: true,
                                showLabels: true,
                                thumbIcon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                ),
                                interval: 20,
                                labelPlacement: LabelPlacement.betweenTicks,
                                enableTooltip: true,
                                stepSize: 1,
                                showDividers: false,
                                // dividerShape: SfDividerShape(),
                                onChanged: (val) {
                                  setState(() {
                                    _sliderHeight = val;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: _size.width * 0.43,
                          height: 180,
                          decoration: k_boxDecoration,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(height: 6),
                              Text(
                                "Weight",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Text(
                                "$_weight",
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                    heroTag: "btn1",
                                    onPressed: () {
                                      setState(() {
                                        _weight += 1;
                                      });
                                    },
                                    backgroundColor: k_Swatch_5.withOpacity(0.85),
                                    child: Icon(Icons.add),
                                  ),
                                  FloatingActionButton(
                                    heroTag: "btn2",
                                    onPressed: () {
                                      if (_weight > 0) {
                                        setState(() {
                                          _weight -= 1;
                                        });
                                      }
                                    },
                                    backgroundColor: k_Swatch_5.withOpacity(0.85),
                                    child: Icon(Icons.remove),
                                  ),
                                ],
                              ),
                              SizedBox(height: 6),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          width: _size.width * 0.43,
                          height: 180,
                          decoration: k_boxDecoration,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(height: 6),
                              Text(
                                "Age",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Text(
                                "$_age",
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                    heroTag: "btn3",
                                    onPressed: () {
                                      setState(() {
                                        _age += 1;
                                      });
                                    },
                                    backgroundColor: k_Swatch_5.withOpacity(0.85),
                                    child: Icon(Icons.add),
                                  ),
                                  FloatingActionButton(
                                    heroTag: "btn4",
                                    onPressed: () {
                                      if (_weight > 0) {
                                        setState(() {
                                          _age -= 1;
                                        });
                                      }
                                    },
                                    backgroundColor: k_Swatch_5.withOpacity(0.85),
                                    child: Icon(Icons.remove),
                                  ),
                                ],
                              ),
                              SizedBox(height: 6),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => Result(
                                age: _age,
                                isMeal: _isMeal,
                                weight: _weight,
                                height: _sliderHeight,
                              ))),
                  child: Container(
                    height: 55,
                    width: _size.width,
                    decoration: BoxDecoration(
                      color: k_Swatch_3,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          offset: Offset(-3.5, -2.8),
                          spreadRadius: 0.2,
                        ),
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 6,
                          offset: Offset(1, 2),
                          spreadRadius: 0.2,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Let's Begin",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text(
        "BMI Calculater",
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
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
