import 'dart:ui';

import 'package:assignment_1/cores/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CoffeeCard extends StatelessWidget {
  final Function() onTap;
  const CoffeeCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
          decoration: BoxDecoration(
              color: AppPalete.lowOpacityWhite,
              border: Border.all(color: AppPalete.lowOpacityWhite, width: 2),
              borderRadius: BorderRadius.circular(5)),
          width: 175,
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: Image.asset('assets/coffee-cup-1.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Hot Cappuccino',
                        style: TextStyle(
                            color: Color.fromARGB(
                              225,
                              205,
                              205,
                              205,
                            ),
                            fontSize: 18),
                      ),
                      const Text(
                        'Espresso, Steamed Milk',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('4.9 ⭐ (459)'),
                          GestureDetector(
                            child: Container(
                                height: 25,
                                width: 25,
                                color: Colors.green,
                                child: Icon(
                                  Icons.add,
                                  color: AppPalete.white,
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
