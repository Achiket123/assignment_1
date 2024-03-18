import 'dart:ui';

import 'package:assignment_1/cores/constants/colors.dart';
import 'package:assignment_1/src/coffee/presentation/widgets/components.dart';
import 'package:flutter/material.dart';

class CoffeePage extends StatefulWidget {
  route() => MaterialPageRoute(builder: (builder) => const CoffeePage());
  const CoffeePage({super.key});

  @override
  State<CoffeePage> createState() => _CoffeePageState();
}

class _CoffeePageState extends State<CoffeePage> {
  final List<int> numbers = [1, 2, 3, 4, 5];
  int _selectedNumber = 1;
  List<String> milkType = ['Skim Milk'];
  bool isSelected = false;
  bool highPriority = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          // Image Part
          Image.asset('assets/coffee-1.png'),
          Container(
              decoration: BoxDecoration(
                border: const Border(
                    top: BorderSide(
                        color: Color.fromARGB(255, 184, 184, 184), width: 01)),
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('assets/cocoa-1.png'), fit: BoxFit.cover),
              ),

              // Bottom Part decoration
              child: ClipRRect(
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                     Color.fromARGB(33, 255, 255, 255),
                    Color.fromARGB(104, 255, 255, 255),
                    Color.fromARGB(25, 255, 255, 255)
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //Contents
                                const Text(
                                  'Lattè',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 217, 217, 217),
                                  ),
                                ),
                                _dropDownButton()
                              ],
                            ),
                            const Text(
                              '4.9 ⭐ (458)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                            ),
                            const SizedBox(
                              child: Text(
                                'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 209, 209, 209)),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            // Choice of cup Filling
                            const Text(
                              'Choice of cup Filling',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 212, 212, 212)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CoffeeSizeButton(
                                  isSelected: true,
                                  text: 'Full',
                                  onPressed: () {},
                                ),
                                CoffeeSizeButton(
                                  text: '1/2 Full',
                                  onPressed: () {},
                                ),
                                CoffeeSizeButton(
                                  text: '3/4 Full',
                                  onPressed: () {},
                                ),
                                CoffeeSizeButton(
                                  text: '1/4 Full',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Choice of Milk',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 212, 212, 212)),
                            ),
                            SizedBox(
                              height: 150,
                              child: Column(
                                children: [
                                  Wrap(
                                    spacing:
                                        8.0, // Spacing between adjacent items (horizontal)
                                    runSpacing:
                                        8.0, // Spacing between lines (vertical)
                                    alignment: WrapAlignment.start,
                                    children: [
                                      TypeSelection(
                                        isSelected: isSelected,
                                        onChange: (value) {
                                          setState(() {
                                            if (milkType
                                                .contains('Skim Milk')) {
                                              isSelected = !isSelected;
                                            }
                                            milkType.remove('Skim Milk');
                                          });
                                        },
                                        text: 'Skim Milk',
                                      ),
                                      TypeSelection(
                                        onChange: (value) {
                                          setState(() {
                                            isSelected = !isSelected;
                                          });
                                        },
                                        text: 'Almond Milk',
                                      ),
                                      TypeSelection(
                                        onChange: (value) {
                                          setState(() {
                                            isSelected = !isSelected;
                                          });
                                        },
                                        text: 'Soy Milk',
                                      ),
                                      TypeSelection(
                                        onChange: (value) {
                                          setState(() {
                                            isSelected = !isSelected;
                                          });
                                        },
                                        text: 'Full Cream Milk',
                                      ),
                                      TypeSelection(
                                        onChange: (value) {
                                          setState(() {
                                            isSelected = !isSelected;
                                          });
                                        },
                                        text: 'Oat Milk',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              'Choice of Sugar',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 212, 212, 212)),
                            ),
                            Container(
                              constraints: const BoxConstraints(maxHeight: 90),
                              child: Column(
                                children: [
                                  Wrap(
                                    spacing:
                                        8.0, // Spacing between adjacent items (horizontal)
                                    runSpacing:
                                        8.0, // Spacing between lines (vertical)
                                    alignment: WrapAlignment.start,
                                    children: [
                                      TypeSelection(
                                          isSelected: true,
                                          text: 'Sugar X1',
                                          onChange: (value) {}),
                                      TypeSelection(
                                          text: '½ Sugar',
                                          onChange: (value) {}),
                                      TypeSelection(
                                          text: 'Sugar X2',
                                          onChange: (value) {}),
                                      TypeSelection(
                                          text: 'No Sugar',
                                          onChange: (value) {}),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(200, 51, 51, 51)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Checkbox(
                                      value: highPriority,
                                      onChanged: (value) {
                                        setState(() {
                                          highPriority = value ?? true;
                                        });
                                      }),
                                  const Row(
                                    children: [
                                      Text(
                                        'High Priority',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 212, 212, 212)),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Icon(
                                        Icons.error,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 125,
                                    decoration: BoxDecoration(
                                      gradient: AppPalete.submitButton,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: TextButton(
                                        style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    AppPalete.transparent)),
                                        onPressed: () {},
                                        child: const Text(
                                          'Submit',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 212, 212, 212)),
                                        )),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    ));
  }

  Container _dropDownButton() {
    return Container(
      height: 20,
      width: 50,
      color: const Color.fromARGB(255, 205, 205, 205),
      child: DropdownButton(
        alignment: Alignment.bottomLeft,
        value: _selectedNumber,
        items: numbers.map((int number) {
          setState(() {
            _selectedNumber = number;
          }); // Create a DropdownMenuItem for each number
          return DropdownMenuItem<int>(
            value: number,
            child: Text('$number'), // Display the number as text
          );
        }).toList(),
        onChanged: (newValue) {
          // Function to handle dropdown value change
        },
      ),
    );
  }
}
