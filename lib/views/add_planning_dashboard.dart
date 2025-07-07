import 'package:cip_website/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AddPlanningDashboard extends StatefulWidget {
  const AddPlanningDashboard({super.key});

  @override
  State<AddPlanningDashboard> createState() => _AddPlanningDashboardState();
}

class _AddPlanningDashboardState extends State<AddPlanningDashboard> {
  bool isDrawer = true;
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isDrawer
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                      isDrawer = !isDrawer;
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
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Text(
                                  'Projects',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Divider(height: 2),
                              ),
                              SizedBox(height: 20),
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
                                  setState(() => selectedItem = 'Push Exec');
                                },
                                text: 'Push Exec',
                                leadingIcon: Icons.menu,
                                trailingIcon: Icons.arrow_forward_ios,
                                selected: selectedItem == 'Push Exec',
                              ),
                              CustomListTile(
                                onTap: () {
                                  setState(() => selectedItem = 'Hala Kitchen');
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
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Divider(height: 2),
                              ),
                              SizedBox(height: 15),
                              CustomListTile(
                                onTap: () {
                                  setState(() => selectedItem = 'Attendance');
                                },
                                text: 'Attendance Report',
                                leadingIcon: Icons.person_4_rounded,
                                trailingIcon: Icons.arrow_forward_ios,
                                selected: selectedItem == 'Attendance',
                              ),
                              CustomListTile(
                                onTap: () {
                                  setState(() => selectedItem = 'Leaves');
                                },
                                text: 'Leaves Report',
                                leadingIcon: Icons.live_tv_sharp,
                                trailingIcon: Icons.arrow_forward_ios,
                                selected: selectedItem == 'Leaves',
                              ),
                              CustomListTile(
                                onTap: () {
                                  setState(() => selectedItem = 'Performance');
                                },
                                text: 'Performance Evaluation',
                                leadingIcon: Icons.contact_page,
                                trailingIcon: Icons.arrow_forward_ios,
                                selected: selectedItem == 'Performance',
                              ),
                              CustomListTile(
                                onTap: () {
                                  setState(() => selectedItem = 'White Page');
                                },
                                text: 'White Page',
                                leadingIcon: Icons.contact_page,
                                trailingIcon: Icons.arrow_forward_ios,
                                selected: selectedItem == 'White Page',
                              ),
                              CustomListTile(
                                onTap: () {
                                  setState(() => selectedItem = 'Reports');
                                },
                                text: 'Reports',
                                leadingIcon: Icons.person_2,
                                trailingIcon: Icons.arrow_forward_ios,
                                selected: selectedItem == 'Reports',
                              ),
                              CustomListTile(
                                onTap: () {
                                  setState(
                                    () => selectedItem = 'Time Tracking',
                                  );
                                },
                                text: 'Time Tracking',
                                leadingIcon: Icons.computer,
                                trailingIcon: Icons.arrow_forward_ios,
                                selected: selectedItem == 'Time Tracking',
                              ),
                              CustomListTile(
                                onTap: () {
                                  setState(() => selectedItem = 'Employees');
                                },
                                text: 'Employees',
                                leadingIcon: Icons.task_outlined,
                                trailingIcon: Icons.arrow_forward_ios,
                                selected: selectedItem == 'Employees',
                              ),
                              CustomListTile(
                                onTap: () {
                                  setState(() => selectedItem = 'Contract');
                                },
                                text: 'Contract',
                                leadingIcon: Icons.task_outlined,
                                trailingIcon: Icons.arrow_forward_ios,
                                selected: selectedItem == 'Contract',
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
                                        Icon(Icons.logout, color: Colors.white),
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
                        isDrawer = !isDrawer;
                      });
                    },
                  ),
                ),
          Expanded(
            child: SizedBox(
              child: Column(
                children: [
                  Container(
                    width: isDrawer ? size.width * 0.8 : size.width * 0.97,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: Text(
                              'DASHBOARD',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.notifications_outlined,
                            color: Colors.black,
                          ),
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
                        width: isDrawer ? size.width * 0.77 : size.width * 0.94,
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

                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 36,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/left.png'),
                                      SizedBox(width: 15),
                                      Text(
                                        'CONTRACT DETAILS',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.secondaryColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 9.0,
                                        horizontal: 32,
                                      ),
                                      child: Text(
                                        'Add Planning',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Divider(),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text('Name'),
                                      Container(
                                        height: 50,
                                        width: size.width * 0.16,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(0xFFE6E6E6),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                  horizontal: 16.0,
                                                ),
                                            border: InputBorder.none,
                                            hintText: 'Enter name',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text('Email'),
                                      Container(
                                        height: 50,
                                        width: size.width * 0.16,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(0xFFE6E6E6),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                  horizontal: 16.0,
                                                ),
                                            border: InputBorder.none,
                                            hintText: 'Enter email',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text('Phone'),
                                      Container(
                                        height: 50,
                                        width: size.width * 0.16,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(0xFFE6E6E6),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                  horizontal: 16.0,
                                                ),
                                            border: InputBorder.none,
                                            hintText: 'Enter phone',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text('Designation'),
                                      Container(
                                        height: 50,
                                        width: size.width * 0.16,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(0xFFE6E6E6),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                  horizontal: 16.0,
                                                ),
                                            border: InputBorder.none,
                                            hintText: 'Enter Designation',
                                          ),
                                        ),
                                      ),
                                    ],
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
                                      Text('Name'),
                                      Container(
                                        height: 50,
                                        width: size.width * 0.16,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(0xFFE6E6E6),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                  horizontal: 16.0,
                                                ),
                                            border: InputBorder.none,
                                            hintText: 'Enter name',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text('Email'),
                                      Container(
                                        height: 50,
                                        width: size.width * 0.16,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(0xFFE6E6E6),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                  horizontal: 16.0,
                                                ),
                                            border: InputBorder.none,
                                            hintText: 'Enter email',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text('Phone'),
                                      Container(
                                        height: 50,
                                        width: size.width * 0.16,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(0xFFE6E6E6),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                  horizontal: 16.0,
                                                ),
                                            border: InputBorder.none,
                                            hintText: 'Enter phone',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text('Designation'),
                                      Container(
                                        height: 50,
                                        width: size.width * 0.16,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(0xFFE6E6E6),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                  horizontal: 16.0,
                                                ),
                                            border: InputBorder.none,
                                            hintText: 'Enter Designation',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
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
  }
}
