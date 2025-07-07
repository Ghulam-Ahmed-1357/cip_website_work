import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String selectedItem = '';
  bool drawer = true;
  bool isStart = false;
  bool isStart1 = false;
  bool isStart2 = false;
  bool isStart3 = false;
  bool isStart4 = false;
  bool isStart5 = false;
  bool isStart6 = false;
  bool isStart7 = false;
  bool isStart8 = false;
  bool isStart9 = false;
  bool isStart10 = false;
  bool isStart11 = false;
  bool isStart12 = false;
  bool isStart13 = false;
  bool isStart14 = false;
  bool isStart15 = false;
  bool isStart16 = false;
  bool isStart17 = false;
  bool isStart18 = false;
  bool isStart19 = false;
  bool isClockIn = false;
  bool isBreak = false;
  bool isMinimize = false;
  bool isLunchBreak = false;
  bool isPrayerBreak = false;
  bool isRestBreak = false;
  bool isChillZoneBreak = false;
  String breakType = '';

  TextStyle textStyle(double size) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: size,
      color: Colors.black,
    );
  }

  TextStyle tileTextStyle(double? size) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: size ?? 12,
      color: Color(0xFF5A5A5A),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Row(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              drawer
                  ? Container(
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      color: Colors.blue.shade900,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                ClipRRect(
                                  // borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    'assets/images/profile.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: SizedBox(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Abdul Mannan',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'amannan@fossphorus.com',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          drawer = !drawer;
                                        });
                                      },
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 8),
                              child: ListView(
                                children: [
                                  CustomListTile(
                                    onTap: () {
                                      setState(() => selectedItem = 'Tasks');
                                    },
                                    text: 'My Tasks',
                                    leadingIcon: Icons.task_outlined,
                                    trailingIcon: Icons.arrow_forward_ios,
                                    selected: selectedItem == 'Tasks',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                    ),
                                    child: Divider(height: 2),
                                  ),
                                  CustomListTile(
                                    onTap: () {
                                      setState(
                                        () => selectedItem = 'Riz Technology',
                                      );
                                    },
                                    text: 'Riz Technology',
                                    leadingIcon: Icons.menu,
                                    trailingIcon: Icons.arrow_forward_ios,
                                    selected: selectedItem == 'Riz Technology',
                                  ),
                                  CustomListTile(
                                    onTap: () {
                                      setState(
                                        () => selectedItem = 'Push Exec',
                                      );
                                    },
                                    text: 'Push Exec',
                                    leadingIcon: Icons.menu,
                                    trailingIcon: Icons.arrow_forward_ios,
                                    selected: selectedItem == 'Push Exec',
                                  ),
                                  CustomListTile(
                                    onTap: () {
                                      setState(
                                        () => selectedItem = 'Hala Kitchen',
                                      );
                                    },
                                    text: 'Hala Kitchen',
                                    leadingIcon: Icons.menu,
                                    trailingIcon: Icons.arrow_forward_ios,
                                    selected: selectedItem == 'Hala Kitchen',
                                  ),
                                  CustomListTile(
                                    onTap: () {
                                      setState(() => selectedItem = 'Alawafy');
                                    },
                                    text: 'Alawafy',
                                    leadingIcon: Icons.menu,
                                    trailingIcon: Icons.arrow_forward_ios,
                                    selected: selectedItem == 'Alawafy',
                                  ),
                                  CustomListTile(
                                    onTap: () {
                                      setState(
                                        () => selectedItem = 'Fredomtech',
                                      );
                                    },
                                    text: 'Fredomtech',
                                    leadingIcon: Icons.menu,
                                    trailingIcon: Icons.arrow_forward_ios,
                                    selected: selectedItem == 'Fredomtech',
                                  ),
                                  SizedBox(height: 15),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                    ),
                                    child: Divider(height: 2),
                                  ),

                                  CustomListTile(
                                    onTap: () {
                                      setState(
                                        () => selectedItem = 'Attendance',
                                      );
                                    },
                                    text: 'Attendance',
                                    leadingIcon: Icons.person_4_rounded,
                                    trailingIcon: Icons.arrow_forward_ios,
                                    selected: selectedItem == 'Attendance',
                                  ),
                                  CustomListTile(
                                    onTap: () {
                                      setState(() => selectedItem = 'Leaves');
                                    },
                                    text: 'Leaves',
                                    leadingIcon: Icons.live_tv_sharp,
                                    trailingIcon: Icons.arrow_forward_ios,
                                    selected: selectedItem == 'Leaves',
                                  ),
                                  CustomListTile(
                                    onTap: () {
                                      setState(
                                        () => selectedItem = 'White Page',
                                      );
                                    },
                                    text: 'White Page',
                                    leadingIcon: Icons.contact_page,
                                    trailingIcon: Icons.arrow_forward_ios,
                                    selected: selectedItem == 'White Page',
                                  ),
                                  CustomListTile(
                                    onTap: () {
                                      setState(
                                        () => selectedItem = 'Admin Ticket',
                                      );
                                    },
                                    text: 'Admin Ticket',
                                    leadingIcon: Icons.person_2,
                                    trailingIcon: Icons.arrow_forward_ios,
                                    selected: selectedItem == 'Admin Ticket',
                                  ),
                                  CustomListTile(
                                    onTap: () {
                                      setState(
                                        () => selectedItem = 'IT Ticket',
                                      );
                                    },
                                    text: 'IT Ticket',
                                    leadingIcon: Icons.computer,
                                    trailingIcon: Icons.arrow_forward_ios,
                                    selected: selectedItem == 'IT Ticket',
                                  ),
                                  CustomListTile(
                                    onTap: () {
                                      setState(
                                        () => selectedItem = 'HR Tickets',
                                      );
                                    },
                                    text: 'HR Tickets',
                                    leadingIcon: Icons.task_outlined,
                                    trailingIcon: Icons.arrow_forward_ios,
                                    selected: selectedItem == 'HR Tickets',
                                  ),
                                  CustomListTile(
                                    onTap: () {
                                      setState(() => selectedItem = 'Settings');
                                    },
                                    text: 'Settings',
                                    leadingIcon: Icons.settings,
                                    trailingIcon: Icons.arrow_forward_ios,
                                    selected: selectedItem == 'Settings',
                                  ),
                                  SizedBox(height: size.height * 0.22),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 50,
                                      width: size.width * 0.16,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.amber,
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.logout,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              'Logout ',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
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
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Icon(Icons.menu),
                        onTap: () {
                          setState(() {
                            drawer = !drawer;
                          });
                        },
                      ),
                    ),
            ],
          ),

          Expanded(
            child: SizedBox(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        width: drawer ? size.width * 0.8 : size.width * 0.97,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Text(
                                  'Dashboard',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            isClockIn = !isClockIn;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                            color: isClockIn
                                                ? Colors.red
                                                : Color(0xFF03C95A),
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 8.0,
                                                    vertical: 4,
                                                  ),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .remove_red_eye_outlined,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    'Clock In',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 5),

                                      Row(
                                        children: [
                                          Icon(Icons.alarm),
                                          SizedBox(width: 5),
                                          Text(
                                            '02:03 PM',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20),
                                  isClockIn
                                      ? InkWell(
                                          onTap: () {
                                            if (isBreak == true) {
                                              setState(() {
                                                isBreak = false;
                                              });
                                            } else {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  final size =
                                                      MediaQuery.sizeOf(
                                                        context,
                                                      );
                                                  return Dialog(
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 24.0,
                                                            horizontal: 16,
                                                          ),
                                                      child: SizedBox(
                                                        height:
                                                            size.height * 0.36,
                                                        width:
                                                            size.width * 0.25,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Take Break',
                                                                  style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Color(
                                                                      0xFF10375C,
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  child: Icon(
                                                                    Icons
                                                                        .cancel_outlined,
                                                                  ),
                                                                  onTap: () {
                                                                    Navigator.pop(
                                                                      context,
                                                                    );
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                            Divider(),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  isBreak =
                                                                      true;
                                                                  print(
                                                                    "pressed value $isBreak",
                                                                  );
                                                                  print(
                                                                    isBreak,
                                                                  );
                                                                  Navigator.pop(
                                                                    context,
                                                                  );
                                                                });
                                                              },
                                                              child: InkWell(
                                                                onTap: () {
                                                                  setState(() {
                                                                    breakType =
                                                                        'Lunch Break';
                                                                    isLunchBreak =
                                                                        true;
                                                                    Navigator.pop(
                                                                      context,
                                                                    );
                                                                  });
                                                                },
                                                                child: Container(
                                                                  decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          12,
                                                                        ),
                                                                    color: Colors
                                                                        .grey
                                                                        .shade200,
                                                                  ),
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          12.0,
                                                                      vertical:
                                                                          8,
                                                                    ),
                                                                    child: Row(
                                                                      children: [
                                                                        Image.asset(
                                                                          'assets/images/lunch.png',
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              20,
                                                                        ),
                                                                        Text(
                                                                          'Lunch Break',
                                                                          style: TextStyle(
                                                                            fontSize:
                                                                                32,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color:
                                                                                Colors.black,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child: Align(
                                                                            alignment:
                                                                                Alignment.topRight,
                                                                            child: Icon(
                                                                              Icons.play_circle,
                                                                              color: Colors.black,
                                                                              size: 40,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),

                                                            SizedBox(
                                                              height: 15,
                                                            ),
                                                            InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  breakType =
                                                                      'Prayer Break';
                                                                  isPrayerBreak =
                                                                      true;
                                                                  Navigator.pop(
                                                                    context,
                                                                  );
                                                                });
                                                              },
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        12,
                                                                      ),
                                                                  color: Colors
                                                                      .grey
                                                                      .shade200,
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        12.0,
                                                                    vertical: 8,
                                                                  ),
                                                                  child: Row(
                                                                    children: [
                                                                      Image.asset(
                                                                        'assets/images/prayer.png',
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            20,
                                                                      ),
                                                                      Text(
                                                                        'Prayer Break',
                                                                        style: TextStyle(
                                                                          fontSize:
                                                                              32,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          color:
                                                                              Colors.black,
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child: Align(
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                          child: Icon(
                                                                            Icons.play_circle,
                                                                            color:
                                                                                Colors.black,
                                                                            size:
                                                                                40,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),

                                                            SizedBox(
                                                              height: 15,
                                                            ),
                                                            InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  breakType =
                                                                      'Rest Break';
                                                                  isRestBreak =
                                                                      true;
                                                                  Navigator.pop(
                                                                    context,
                                                                  );
                                                                });
                                                              },
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        12,
                                                                      ),
                                                                  color: Colors
                                                                      .grey
                                                                      .shade200,
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        12.0,
                                                                    vertical: 8,
                                                                  ),
                                                                  child: Row(
                                                                    children: [
                                                                      Image.asset(
                                                                        'assets/images/rest.png',
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            20,
                                                                      ),
                                                                      Text(
                                                                        'Rest Break',
                                                                        style: TextStyle(
                                                                          fontSize:
                                                                              32,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          color:
                                                                              Colors.black,
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child: Align(
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                          child: Icon(
                                                                            Icons.play_circle,
                                                                            color:
                                                                                Colors.black,
                                                                            size:
                                                                                40,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),

                                                            SizedBox(
                                                              height: 15,
                                                            ),
                                                            InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  breakType =
                                                                      'Chill Zone Break';
                                                                  isChillZoneBreak =
                                                                      true;
                                                                  Navigator.pop(
                                                                    context,
                                                                  );
                                                                });
                                                              },
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        12,
                                                                      ),
                                                                  color: Colors
                                                                      .grey
                                                                      .shade200,
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        12.0,
                                                                    vertical: 8,
                                                                  ),
                                                                  child: Row(
                                                                    children: [
                                                                      Image.asset(
                                                                        'assets/images/chill.png',
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            20,
                                                                      ),
                                                                      Text(
                                                                        'Chill Zone Break',
                                                                        style: TextStyle(
                                                                          fontSize:
                                                                              32,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          color:
                                                                              Colors.black,
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child: Align(
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                          child: Icon(
                                                                            Icons.play_circle,
                                                                            color:
                                                                                Colors.black,
                                                                            size:
                                                                                40,
                                                                          ),
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
                                                    ),
                                                  );
                                                },
                                              );
                                            }
                                            // takeBreak(context, isBreak);
                                            // // print('take break $isBreak');
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: isBreak
                                                  ? Colors.amber
                                                  : Color(0xFF03C95A),
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 4,
                                                    ),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .notifications_active,
                                                      color: isBreak
                                                          ? Colors.red
                                                          : Colors.white,
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
                                                      isBreak
                                                          ? 'End Break'
                                                          : 'Break',
                                                      style: TextStyle(
                                                        color: isBreak
                                                            ? Colors.red
                                                            : Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      : SizedBox(width: 5),
                                ],
                              ),

                              Icon(Icons.notifications_none, size: 28),
                            ],
                          ),
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10,
                          ),
                          child: Container(
                            width: drawer
                                ? size.width * 0.77
                                : size.width * 0.94,
                            height: size.height * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400,
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),

                            // main body
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 22.0,
                                left: 18,
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18.0),
                                      child: isClockIn
                                          ? Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.amber,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          5,
                                                        ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          vertical: 10.0,
                                                          horizontal: 24,
                                                        ),
                                                    child: Text(
                                                      'Create Task',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 50,
                                                  width: size.width * 0.12,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          3,
                                                        ),
                                                    color: Colors.white,
                                                    border: Border.all(
                                                      color:
                                                          Colors.grey.shade400,
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      '01/12/2025 - 30/12/2025',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          : Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  height: 50,
                                                  width: size.width * 0.12,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          3,
                                                        ),
                                                    color: Colors.white,
                                                    border: Border.all(
                                                      color:
                                                          Colors.grey.shade400,
                                                    ),
                                                  ),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 14.0,
                                                            horizontal: 10,
                                                          ),
                                                      border: InputBorder.none,
                                                      hint: Text(
                                                        'Search Client',
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFF8E8E8E,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 12),
                                                Container(
                                                  height: 50,
                                                  width: size.width * 0.12,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          3,
                                                        ),
                                                    color: Colors.white,
                                                    border: Border.all(
                                                      color:
                                                          Colors.grey.shade400,
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      '01/12/2025 - 30/12/2025',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                    ),

                                    SizedBox(height: 25),

                                    // today task
                                    Column(
                                      children: [
                                        ExpansionTile(
                                          initiallyExpanded: true,
                                          enabled: false,

                                          title: Text(
                                            'Today Task',
                                            style: textStyle(20),
                                          ),
                                          children: [
                                            Container(
                                              height: 3,
                                              color: Colors.amber,
                                            ),
                                            Container(
                                              height: 3,
                                              color: const Color.fromARGB(
                                                255,
                                                4,
                                                73,
                                                6,
                                              ),
                                            ),
                                            Table(
                                              columnWidths:
                                                  const <int, TableColumnWidth>{
                                                    0: FlexColumnWidth(),
                                                    1: FlexColumnWidth(),
                                                    2: FlexColumnWidth(),
                                                    3: FlexColumnWidth(),
                                                    4: FlexColumnWidth(),
                                                    5: FlexColumnWidth(),
                                                    6: FlexColumnWidth(),
                                                  },
                                              // defaultVerticalAlignment:
                                              //     TableCellVerticalAlignment.middle,
                                              children: <TableRow>[
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Name',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Client',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Stage Name',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Hours',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Used Hours',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Due Date',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Action',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'UI Design',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Islandcare',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Islandcare 2025',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '10:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '01-01-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart =
                                                                    !isStart;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Create Admin Dashboard UI',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Nexfirm',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Admin Dashboad',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '8 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '08:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '01-01-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart1 =
                                                                    !isStart1;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart1
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart1
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Create HR Dashboard',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Nexfirm',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'HR Dashboad',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '2 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '01:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '01-01-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart2 =
                                                                    !isStart2;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart2
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart2
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),

                                        ExpansionTile(
                                          title: Text(
                                            'This Week Task',
                                            style: textStyle(20),
                                          ),
                                          children: [
                                            Container(
                                              height: 3,
                                              color: Colors.amber,
                                            ),
                                            Container(
                                              height: 3,
                                              color: const Color.fromARGB(
                                                255,
                                                4,
                                                73,
                                                6,
                                              ),
                                            ),
                                            Table(
                                              columnWidths:
                                                  const <int, TableColumnWidth>{
                                                    0: FlexColumnWidth(),
                                                    1: FlexColumnWidth(),
                                                    2: FlexColumnWidth(),
                                                    3: FlexColumnWidth(),
                                                    4: FlexColumnWidth(),
                                                    5: FlexColumnWidth(),
                                                    6: FlexColumnWidth(),
                                                  },
                                              // defaultVerticalAlignment:
                                              //     TableCellVerticalAlignment.middle,
                                              children: <TableRow>[
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Name',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Client',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Stage Name',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Hours',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Used Hours',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Due Date',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Action',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Psd to HTML',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Serviceninjanow',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Web development',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '05:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '05-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart3 =
                                                                    !isStart3;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart3
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart3
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Freedomtech Psd Changes',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Freedomtech',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Maintenance',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '04:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '06-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart4 =
                                                                    !isStart4;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart4
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart4
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Logo Design',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Nexfirm',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Logo Design',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '10:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '10-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart5 =
                                                                    !isStart5;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart5
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart5
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Image Resize',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Freedomtech',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Photo Resize',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '05:05:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '10-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart6 =
                                                                    !isStart6;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart6
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart6
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Push Exec Flyer',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Push Exec',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Flyer Design',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '03:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '11-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart7 =
                                                                    !isStart7;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart7
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart7
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Push Exec Business Card',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Push Exec',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Business Card',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '02:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '11-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart8 =
                                                                    !isStart8;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart8
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart8
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Push Exec Letter Head',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Push Exec',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Letter Head',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '09:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '11-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart9 =
                                                                    !isStart9;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart9
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart9
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        ExpansionTile(
                                          title: Text(
                                            'This Month Task',
                                            style: textStyle(20),
                                          ),
                                          children: [
                                            Container(
                                              height: 3,
                                              color: Colors.amber,
                                            ),
                                            Container(
                                              height: 3,
                                              color: const Color.fromARGB(
                                                255,
                                                4,
                                                73,
                                                6,
                                              ),
                                            ),
                                            Table(
                                              columnWidths:
                                                  const <int, TableColumnWidth>{
                                                    0: FlexColumnWidth(),
                                                    1: FlexColumnWidth(),
                                                    2: FlexColumnWidth(),
                                                    3: FlexColumnWidth(),
                                                    4: FlexColumnWidth(),
                                                    5: FlexColumnWidth(),
                                                    6: FlexColumnWidth(),
                                                  },
                                              // defaultVerticalAlignment:
                                              //     TableCellVerticalAlignment.middle,
                                              children: <TableRow>[
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Name',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Client',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Stage Name',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Hours',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Used Hours',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Due Date',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Action',
                                                        style: tileTextStyle(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Riz Tech Banner',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Riz Tech',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Banner Dev',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '10:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '14-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart10 =
                                                                    !isStart10;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart10
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart10
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Riz Tech Profile Changes',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Riz Tech',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Profile Change',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '02:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '14-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart11 =
                                                                    !isStart11;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart11
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart11
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'FP Profile UK',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Fossphorus',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Profile  UK',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '02:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '28-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart12 =
                                                                    !isStart12;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart12
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart12
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'FP Profile USA',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Fossphorus',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Profile  USA',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '08:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '28-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart13 =
                                                                    !isStart13;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart13
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart13
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'FP Profile Bermuda',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Fossphorus',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Profile Bermuda',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '01:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '28-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart14 =
                                                                    !isStart14;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart14
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart14
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'FP Profile Middle East',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Fossphorus',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Fossphorus ME',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '00:50:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '28-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart15 =
                                                                    !isStart15;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart15
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart15
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'FP Profile PAK',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Fossphorus',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Fossphorus PAK',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '03:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '28-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart16 =
                                                                    !isStart16;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart16
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart16
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'AB Profile UK',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'ACCBK',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'ACCBK UK',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '06:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '28-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart17 =
                                                                    !isStart17;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart17
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart17
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Logo Design',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Serviceninjanow',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'Logo Design',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '03:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '28-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart18 =
                                                                    !isStart18;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart18
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart18
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color(0xFFDCDCDC),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'AB Profile UK',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'ACCBK',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        'ACCBK UK',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '6 hrs',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '06:00:00',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                          ),
                                                      child: Text(
                                                        '28-12-2024',
                                                        style: tileTextStyle(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 4.0,
                                                          ),
                                                      child: Row(
                                                        spacing: 10,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .blue,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isStart19 =
                                                                    !isStart19;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: isStart19
                                                                    ? Colors.red
                                                                    : Colors
                                                                          .amberAccent,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      3,
                                                                    ),
                                                              ),

                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.0,
                                                                    ),
                                                                child: Icon(
                                                                  isStart19
                                                                      ? Icons
                                                                            .stop_circle_outlined
                                                                      : Icons
                                                                            .play_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        3,
                                                                      ),
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        4.0,
                                                                  ),
                                                              child: Icon(
                                                                Icons.done_all,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    // SizedBox(height: 20),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  isStart ||
                          isStart1 ||
                          isStart2 ||
                          isStart3 ||
                          isStart4 ||
                          isStart5 ||
                          isStart6 ||
                          isStart7 ||
                          isStart8 ||
                          isStart9 ||
                          isStart10
                      ? Positioned(
                          bottom: 12,
                          right: 16,
                          child: isMinimize
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      isMinimize = false;
                                    });
                                  },
                                  child: Container(
                                    width: size.width * 0.12,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '00:59',
                                            style: TextStyle(
                                              color: Colors.amber,
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),

                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 8.0,
                                                    vertical: 4,
                                                  ),
                                              child: Icon(
                                                Icons.stop_circle,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  width: size.width * 0.25,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              isMinimize = true;
                                            });
                                          },
                                          child: Container(
                                            // height: 20,
                                            // width: 20,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(16),
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(12),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                right: 4.0,
                                                left: 4,
                                                // top: 2,
                                                bottom: 12,
                                              ),
                                              child: Icon(
                                                Icons.minimize,
                                                size: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 20.0,
                                          right: 20,
                                          left: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text(
                                                          '00:59',
                                                          style: TextStyle(
                                                            color: Color(
                                                              0xFF10375C,
                                                            ),
                                                            fontSize: 40,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        breakType == ''
                                                            ? Text(
                                                                'Task Time: 06:00',
                                                                style:
                                                                    textStyle(
                                                                      11,
                                                                    ),
                                                              )
                                                            : SizedBox(
                                                                height: 1,
                                                              ),
                                                      ],
                                                    ),
                                                    breakType != ''
                                                        ? Text(
                                                            'Remaining time...',
                                                          )
                                                        : SizedBox(width: 0),
                                                  ],
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          3,
                                                        ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 8.0,
                                                          vertical: 4,
                                                        ),
                                                    child: Icon(
                                                      Icons.stop_circle,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(color: Colors.black),
                                            Text(
                                              breakType == ''
                                                  ? 'UI design'
                                                  : 'You are on $breakType!',
                                              style: textStyle(16),
                                            ),
                                            Text(
                                              breakType == ''
                                                  ? 'The reason we use Lorem Ipsum is simple. If we used real text, it would possibly distract from the DESIGN of a page (or indeed, might even be...'
                                                  : breakType == 'Lunch Break'
                                                  ? 'Enjoy your Meal'
                                                  : breakType == 'Prayer Break'
                                                  ? 'Give rest to your soul'
                                                  : breakType == 'Rest Break'
                                                  ? 'Take some rest'
                                                  : 'Chill for some time',
                                              style: breakType == ''
                                                  ? TextStyle(
                                                      color: Color(0xFF5A5A5A),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    )
                                                  : TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        )
                      : SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String text;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final VoidCallback onTap;
  final bool? selected;

  const CustomListTile({
    super.key,
    required this.text,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.onTap,
    this.selected,
  });
  final Color iconColor = Colors.white;
  final Color selectedColor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          color: selected ?? false ? Colors.amber : null,
          child: Row(
            children: [
              Icon(leadingIcon, color: iconColor, size: 30),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(trailingIcon, color: iconColor, size: 16),
              ),
            ],
          ),
        ),
      ),
    );

    // ListTile(
    //   onTap: onTap,
    //   leading: Icon(leadingIcon, color: iconColor, size: 30),
    //   title: Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
    //   trailing: Padding(
    //     padding: const EdgeInsets.only(right: 8.0),
    //     child: Icon(trailingIcon, color: iconColor, size: 16),
    //   ),
    //   selectedTileColor: selectedColor,
    //   tileColor: Colors.red,
    //   selected: selected ?? false,
    // );
  }
}
