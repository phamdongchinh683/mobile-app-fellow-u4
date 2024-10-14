import 'package:flutter/material.dart';

class PartTrip extends StatelessWidget {
  const PartTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'images/danang2.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                      height: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: IconButton(
                        iconSize: 40,
                        icon: const Icon(Icons.arrow_back),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        onPressed: () {},
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 90, left: 25),
                      child: Text(
                        'My Trips',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 20, top: 50),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Current Trips'),
                    const Text('Next Trips'),
                    Container(
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        color: Color(0xff00CEA6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Past Trips',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Text('Wish List'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 5,
                    child: Container(
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'images/l.png',
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 80),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Da Nang, Vietnam',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 48.0),
                                          child: Text(
                                            'Quoc Tu Giam Temple',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.calendar_month_outlined,
                                              color: Color(0xffAFAFAF),
                                              size: 18,
                                            ),
                                            SizedBox(width: 10),
                                            Text('Feb 2, 2020'),
                                          ],
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.access_time,
                                              size: 19,
                                              color: Color(0xffAFAFAF),
                                            ),
                                            SizedBox(width: 10),
                                            Text('8:00 - 10:00'),
                                          ],
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.person_outline,
                                              size: 21,
                                              color: Color(0xffAFAFAF),
                                            ),
                                            SizedBox(width: 10),
                                            Text('Stephne'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      width: 60.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.teal,
                                          width: 4.0,
                                        ),
                                      ),
                                      child: const CircleAvatar(
                                        backgroundImage:
                                            AssetImage('images/m.png'),
                                        radius: 28.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                // Add similar cards for other trips
              ],
            ),
          ),
          // Wrap the bottom navigation in a Stack
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(15),
              color: Colors.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.explore_outlined,
                    color: Color(0xffAFAFAF),
                    size: 30,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(0xff00CEA6),
                        size: 30,
                      ),
                      Text(
                        'My Trips',
                        style: TextStyle(color: Color(0xff00CEA6)),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.message,
                    color: Color(0xffAFAFAF),
                    size: 27,
                  ),
                  Icon(
                    Icons.notifications,
                    color: Color(0xffAFAFAF),
                    size: 30,
                  ),
                  Icon(
                    Icons.person,
                    color: Color(0xffAFAFAF),
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
