import 'package:flutter/material.dart';

class Trip extends StatelessWidget {
  const Trip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'images/danang.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 150,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 90, left: 25),
                  child: Text(
                    'My Trips',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: IconButton(
                    iconSize: 40,
                    icon: const Icon(Icons.arrow_back),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
              height: 15,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        color: const Color(0xff00CEA6),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      'Current Trips',
                      style: TextStyle(color: Colors.white),
                    )),
                const Text('Next Trips',
                    style: TextStyle(color: Color(0xff777777))),
                const Text('Past Trips',
                    style: TextStyle(color: Color(0xff777777))),
                const Text('Wish List',
                    style: TextStyle(color: Color(0xff777777))),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
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
                          'images/k.png',
                          fit: BoxFit.cover,
                          width: 1060,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 9),
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 223, 217, 217),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.black)),
                              child: const SizedBox(
                                width: 150,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check,
                                      size: 25,
                                    ),
                                    Text(
                                      'Mark Finished',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Da Nang, Vietnam',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Dragon Bridge Trip',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month_outlined,
                                          size: 18,
                                          color: Color(0xffAFAFAF),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Jan 30, 2020')
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          size: 19,
                                          color: Color(0xffAFAFAF),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('13:00 - 15:00')
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.person_outline,
                                          size: 21,
                                          color: Color(0xffAFAFAF),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Yoo Jin')
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border:
                                              Border.all(color: Colors.teal)),
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.arrow_circle_down,
                                            size: 18,
                                            color: Colors.teal,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Detail',
                                            style: TextStyle(
                                                color: Colors.teal,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  width: 60.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.teal, // Màu teal cho border
                                      width: 4.0, // Độ dày của border là 1
                                    ),
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage('images/d.png'),
                                    radius: 28.0,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 120,
            ), //chính lại height: 60, nếu dùng trên giao diện chính

            const SizedBox(
              height: 100,
            ), //chỉnh lại height: 100, trên giao diện điện thoại chính
            Container(
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
                      )
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
          ],
        ),
      ),

//  bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.explore_outlined, color: Color(0xffAFAFAF),size: 26,),
//              label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.location_on_outlined,color: Color(0xff00CEA6),size: 26,),
//             label: 'My Trips',backgroundColor: Color(0xff00CEA6),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.message, color: Color(0xffAFAFAF),size: 26,),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications, color: Color(0xffAFAFAF),size: 26,),
//              label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person, color: Color(0xffAFAFAF),size: 26,),
//              label: '',
//           ),
//         ],
//         selectedItemColor: Colors.teal,
//       ),
    );
  }
}
