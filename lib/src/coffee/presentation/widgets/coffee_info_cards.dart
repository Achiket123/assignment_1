import 'package:flutter/material.dart';

class CoffeeInfoCard extends StatelessWidget {
   final Function() onTap;
  const CoffeeInfoCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(158, 133, 129, 129),
              borderRadius: BorderRadius.circular(12)),
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 13, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lattè',
                      style: TextStyle(
                        color: Color.fromARGB(255, 217, 217, 217),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('4.9 ⭐ (458)'),
                    SizedBox(
                      width: 200,
                      height: 70,
                      child: Text(
                        'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 209, 209, 209)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    image: const DecorationImage(
                        image: AssetImage('assets/coffee-1.png'),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Align(
                        alignment: const Alignment(0, 1.3),
                        child: GestureDetector(
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15)),
                            height: 20,
                            child: const Center(
                              child: Text(
                                'ADD',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.white),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
