import 'dart:ui';
import 'package:assignment_1/cores/constants/colors.dart';
import 'package:assignment_1/src/coffee/presentation/pages/coffee_page.dart';
import 'package:assignment_1/src/coffee/presentation/widgets/coffee_cards.dart';
import 'package:assignment_1/src/coffee/presentation/widgets/coffee_info_cards.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  route() => MaterialPageRoute(builder: (builder) => const HomePage());
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _onTap() {
    Navigator.push(
      context,CoffeePage().route()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: _homePagebackground(),
        child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(gradient: AppPalete.loginGradient),
            child: _homePageBody(Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: _topLayout(),
                  ),
                ),
                _popularBeverages( [CoffeeCard(onTap: _onTap,), CoffeeCard(onTap: _onTap)]),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Get it instantly',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                 CoffeeInfoCard(onTap: _onTap,),
                 CoffeeInfoCard(onTap: _onTap),
              ],
            ))),
      ),
    );
  }

  Container _popularBeverages(List<Widget> coffeeCardslist) {
    return Container(
      height: 300,
      color: const Color.fromARGB(137, 49, 49, 49),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
              padding: EdgeInsets.fromLTRB(18.0, 14, 18, 14),
              child: Text(
                'Most Popular Beverages',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: coffeeCardslist,
            ),
          )
        ],
      ),
    );
  }

// Extracted Methods

  Column _topLayout() {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // MainRow
            children: [
              // Name and Symbol Row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '👋',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '20/12/2022',
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 148, 148, 148)),
                        ),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 200),
                          child: const Text(
                            'Joshua Scanlan ',
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 167, 167, 167)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              // Icon and profile row
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(9)),
                        child: Image.asset(
                          'assets/bag.png',
                          scale: 0.9,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.centerRight,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 72, 118, 156),
                                width: 2),
                            borderRadius: BorderRadius.circular(40),
                            image: const DecorationImage(
                                image: AssetImage('assets/user.jpeg'))),
                        height: 40,
                        width: 40,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 30, 18, 0),
          child: Container(
            height: 50,
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 249, 249, 249)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                        label: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Search favorite Beverages',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                        border: InputBorder.none),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/drop_down.png'),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

// Function for The central box
  ClipRRect _homePageBody(Widget child) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
              color: AppPalete.lowOpacityWhite,
              border: Border.all(color: AppPalete.lowOpacityWhite)),
          child: SingleChildScrollView(
            child: child,
          ),
        ),
      ),
    );
  }

// Background og Login Page
  BoxDecoration _homePagebackground() {
    return const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          scale: 1,
          image: AssetImage(
            'assets/cocoa-1.png',
          ),
        ),
        gradient: AppPalete.loginGradient);
  }
}
