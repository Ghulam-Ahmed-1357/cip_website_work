import 'package:cip_website/config/app_colors.dart';
import 'package:cip_website/pages/planning/planning_screen.dart';
import 'package:flutter/material.dart';

extension SpaceExtension on num {
  SizedBox get height => SizedBox(height: toDouble());
  SizedBox get width => SizedBox(width: toDouble());
}

class ContractScreen extends StatefulWidget {
  const ContractScreen({super.key});

  @override
  State<ContractScreen> createState() => _ContractScreenState();
}

class _ContractScreenState extends State<ContractScreen> {
  List contractList = [
    {"title": "Website content", "date": "12-12-2024"},
    {"title": "Logo design requirements", "date": "12-12-2024"},
    {"title": "Website description", "date": "12-12-2024"},
    {"title": "requirements", "date": "12-12-2024"},
    {"title": "Winning Proposals", "date": "12-12-2024"},
  ];
  bool isDrawer = true;
  String selectedItem = '';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isDrawer
              ? CustomDrawer(
                  size: size,
                  isDrawer: isDrawer,
                  selectedItem: selectedItem,
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
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/left.png',
                                            ),
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
                                        CustomButton(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    PlanningScreen(),
                                              ),
                                            );
                                          },
                                          text: 'Add Planning',
                                          width: size.width * 0.14,
                                        ),
                                      ],
                                    ),
                                    25.height,
                                    Divider(),
                                    25.height,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomTextField(
                                          hintText: 'Enter Name',
                                          label: 'Name',
                                          width: size.width * 0.16,
                                        ),
                                        CustomTextField(
                                          hintText: 'Email',
                                          label: 'Enter email',
                                          width: size.width * 0.16,
                                        ),
                                        CustomTextField(
                                          hintText: 'Enter Phone number',
                                          label: 'Phone',
                                          width: size.width * 0.16,
                                          keyboardType: TextInputType.phone,
                                        ),
                                        CustomTextField(
                                          hintText: 'Enter designation',
                                          label: 'Designation',
                                          width: size.width * 0.16,
                                        ),
                                      ],
                                    ),
                                    25.height,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomTextField(
                                          hintText: 'Enter Name',
                                          label: 'Name',
                                          width: size.width * 0.16,
                                        ),
                                        CustomTextField(
                                          hintText: 'Email',
                                          label: 'Enter email',
                                          width: size.width * 0.16,
                                        ),
                                        CustomTextField(
                                          hintText: 'Enter Phone number',
                                          label: 'Phone',
                                          width: size.width * 0.16,
                                        ),
                                        CustomTextField(
                                          hintText: 'Enter designation',
                                          label: 'Designation',
                                          width: size.width * 0.16,
                                        ),
                                      ],
                                    ),
                                    30.height,
                                  ],
                                ),
                                Divider(),
                                Text('Contract'),
                                Text(
                                  'Fossphorus',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Row(
                                  children: [
                                    CustomButton(
                                      onTap: () {},
                                      text: 'Client Docs',
                                      width: size.width * 0.18,
                                    ),
                                    SizedBox(width: 16),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: size.width * 0.18,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          border: Border.all(
                                            color: AppColors.secondaryColor,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 9.0,
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Firm Docs',
                                              style: TextStyle(
                                                color: AppColors.secondaryColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                25.height,
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        CustomTextField(
                                          hintText: 'Start date',
                                          label: 'Start Date',
                                          width: size.width * 0.12,
                                          fillColor: Colors.white,
                                          keyboardType: TextInputType.datetime,
                                        ),
                                        8.width,
                                        CustomTextField(
                                          hintText: 'End date',
                                          label: 'End Date',
                                          width: size.width * 0.12,
                                          fillColor: Colors.white,
                                          keyboardType: TextInputType.datetime,
                                        ),
                                        8.width,
                                        CustomTextField(
                                          hintText: 'Search...',
                                          label: 'File name',
                                          width: size.width * 0.12,
                                          fillColor: Colors.white,
                                          keyboardType: TextInputType.datetime,
                                        ),
                                      ],
                                    ),
                                    20.height,
                                    ListView.separated(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      separatorBuilder: (context, index) =>
                                          15.height,
                                      itemCount: contractList.length,
                                      itemBuilder: (context, index) =>
                                          CustomTaskTile(
                                            date: contractList[index]["date"],
                                            title: contractList[index]["title"],
                                            size: size,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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

class CustomDrawer extends StatefulWidget {
  final Size size;
  bool isDrawer;
  String selectedItem;
  CustomDrawer({
    super.key,
    required this.size,
    required this.isDrawer,
    required this.selectedItem,
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                          widget.isDrawer = widget.isDrawer;
                        });
                      },
                      child: Icon(Icons.arrow_back_ios, color: Colors.white),
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
                      setState(() => widget.selectedItem = 'Tasks');
                    },
                    text: 'My Tasks',
                    leadingIcon: Icons.task_outlined,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'Tasks',
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Projects',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Divider(height: 2),
                  ),
                  SizedBox(height: 20),
                  CustomListTile(
                    onTap: () {
                      setState(() => widget.selectedItem = 'Riz Technology');
                    },
                    text: 'Riz Technology',
                    leadingIcon: Icons.menu,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'Riz Technology',
                  ),
                  CustomListTile(
                    onTap: () {
                      setState(() => widget.selectedItem = 'Push Exec');
                    },
                    text: 'Push Exec',
                    leadingIcon: Icons.menu,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'Push Exec',
                  ),
                  CustomListTile(
                    onTap: () {
                      setState(() => widget.selectedItem = 'Hala Kitchen');
                    },
                    text: 'Hala Kitchen',
                    leadingIcon: Icons.menu,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'Hala Kitchen',
                  ),
                  CustomListTile(
                    onTap: () {
                      setState(() => widget.selectedItem = 'Alawafy');
                    },
                    text: 'Alawafy',
                    leadingIcon: Icons.menu,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'Alawafy',
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Divider(height: 2),
                  ),
                  SizedBox(height: 15),
                  CustomListTile(
                    onTap: () {
                      setState(() => widget.selectedItem = 'Attendance');
                    },
                    text: 'Attendance Report',
                    leadingIcon: Icons.person_4_rounded,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'Attendance',
                  ),
                  CustomListTile(
                    onTap: () {
                      setState(() => widget.selectedItem = 'Leaves');
                    },
                    text: 'Leaves Report',
                    leadingIcon: Icons.live_tv_sharp,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'Leaves',
                  ),
                  CustomListTile(
                    onTap: () {
                      setState(() => widget.selectedItem = 'Performance');
                    },
                    text: 'Performance Evaluation',
                    leadingIcon: Icons.contact_page,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'Performance',
                  ),
                  CustomListTile(
                    onTap: () {
                      setState(() => widget.selectedItem = 'White Page');
                    },
                    text: 'White Page',
                    leadingIcon: Icons.contact_page,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'White Page',
                  ),
                  CustomListTile(
                    onTap: () {
                      setState(() => widget.selectedItem = 'Reports');
                    },
                    text: 'Reports',
                    leadingIcon: Icons.person_2,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'Reports',
                  ),
                  CustomListTile(
                    onTap: () {
                      setState(() => widget.selectedItem = 'Time Tracking');
                    },
                    text: 'Time Tracking',
                    leadingIcon: Icons.computer,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'Time Tracking',
                  ),
                  CustomListTile(
                    onTap: () {
                      setState(() => widget.selectedItem = 'Employees');
                    },
                    text: 'Employees',
                    leadingIcon: Icons.person,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'Employees',
                  ),
                  CustomListTile(
                    onTap: () {
                      setState(() => widget.selectedItem = 'Contract');
                    },
                    text: 'Contract',
                    leadingIcon: Icons.assignment_add,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'Contract',
                  ),
                  CustomListTile(
                    onTap: () {
                      setState(() => widget.selectedItem = 'Settings');
                    },
                    text: 'Settings',
                    leadingIcon: Icons.settings,
                    trailingIcon: Icons.arrow_forward_ios,
                    selected: widget.selectedItem == 'Settings',
                  ),
                  SizedBox(height: widget.size.height * 0.22),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      width: widget.size.width * 0.16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.amber,
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}

class CustomTaskTile extends StatelessWidget {
  const CustomTaskTile({
    super.key,
    required this.title,
    required this.date,
    required this.size,
  });
  final String title;
  final String date;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
        child: Stack(
          children: [
            Row(
              children: [
                Icon(Icons.article, color: Color(0xFF828282), size: 40),
                10.width,
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF828282),
                  ),
                ),
              ],
            ),
            Positioned(
              left: size.width * 0.25,
              top: 10,
              child: Center(
                child: Text(date, style: TextStyle(color: Color(0xFF828282))),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Icon(
                  Icons.visibility_outlined,
                  color: Color(0xFF828282),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.label,
    required this.width,
    this.height,
    this.fillColor,
    this.keyboardType,
  });

  final String hintText;
  final String label;
  final double width;
  final double? height;
  final Color? fillColor;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Container(
          height: height ?? 50,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: fillColor ?? Color(0xFFE6E6E6),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: TextField(
            textInputAction: TextInputAction.next,
            keyboardType: keyboardType ?? TextInputType.text,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              border: InputBorder.none,
              hintText: hintText,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final double? fontSize;
  final double width;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.fontSize,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.secondaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 9.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: fontSize ?? 16,
              ),
            ),
          ),
        ),
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
