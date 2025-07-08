import 'package:cip_website/utils/app_colors.dart';
import 'package:cip_website/views/add_planning_dashboard.dart';
import 'package:flutter/material.dart';

class PlanningScreen extends StatefulWidget {
  const PlanningScreen({super.key});

  @override
  State<PlanningScreen> createState() => _PlanningScreenState();
}

class _PlanningScreenState extends State<PlanningScreen> {
  bool isDrawer = true;
  String selectedItem = '';

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
                    onTap: () {
                      setState(() {
                        isDrawer = !isDrawer;
                      });
                    },
                    child: Icon(Icons.menu),
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
                                          onTap: () {},
                                          text: 'Add Planning',
                                          width: size.width * 0.14,
                                        ),
                                      ],
                                    ),
                                    25.height,
                                    Container(
                                      color: AppColors.secondaryColor,
                                      height: 2,
                                    ),
                                    Container(color: Colors.green, height: 1.5),
                                  ],
                                ),
                                Table(
                                  columnWidths: <int, TableColumnWidth>{
                                    0: FlexColumnWidth(),
                                    1: FlexColumnWidth(),
                                    2: FlexColumnWidth(),
                                    3: FlexColumnWidth(),
                                    4: FlexColumnWidth(),
                                    5: FlexColumnWidth(),
                                    6: FlexColumnWidth(),
                                    7: FlexColumnWidth(),
                                    8: FlexColumnWidth(),
                                    9: FlexColumnWidth(),
                                  },
                                  children: [
                                    TableRow(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8.0,
                                          ),
                                          child: Text(
                                            'Task no.',
                                            style: tileTextStyle(14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8.0,
                                          ),
                                          child: Text(
                                            'Client',
                                            style: tileTextStyle(14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8.0,
                                          ),
                                          child: Text(
                                            'Task Name',
                                            style: tileTextStyle(14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8.0,
                                          ),
                                          child: Text(
                                            'Assign To',
                                            style: tileTextStyle(14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8.0,
                                          ),
                                          child: Text(
                                            'Hrs',
                                            style: tileTextStyle(14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8.0,
                                          ),
                                          child: Text(
                                            'Used Hours',
                                            style: tileTextStyle(14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8.0,
                                          ),
                                          child: Text(
                                            'Due Date',
                                            style: tileTextStyle(14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8.0,
                                          ),
                                          child: Text(
                                            'Dependency',
                                            style: tileTextStyle(14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8.0,
                                          ),
                                          child: Text(
                                            'Comments',
                                            style: tileTextStyle(14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8.0,
                                          ),
                                          child: Text(
                                            'Status',
                                            style: tileTextStyle(14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8.0,
                                          ),
                                          child: Text(
                                            'Actions',
                                            style: tileTextStyle(14),
                                          ),
                                        ),
                                      ],
                                    ),

                                    TableRow(
                                      children: [
                                        TableCell(
                                          // This single cell spans all visual columns
                                          child: Container(
                                            width: double.infinity,
                                            color: Colors.blueGrey.shade200,
                                            padding: const EdgeInsets.all(12),
                                            child: const Text(
                                              'UI/UX DESIGN',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                        for (int i = 0; i < 10; i++)
                                          TableCell(
                                            child: Container(
                                              height:
                                                  70, // Set height explicitly
                                              color: Colors.blueGrey.shade200,
                                            ),
                                          ),
                                      ],
                                    ),

                                    TableRow(
                                      children: [
                                        Text('#01'),
                                        Text('ServiceNinjaNow'),
                                        Text('AB Pitch Deck Improvement'),
                                        Text('Tauseef'),
                                        Text('1hr'),
                                        Text('02:00:00'),
                                        Text('10-05-2025'),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 2,
                                            ),
                                            child: Center(
                                              child: Text('Task no.'),
                                            ),
                                          ),
                                        ),
                                        Icon(Icons.message),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 2.0,
                                            ),
                                            child: Center(
                                              child: Text(
                                                'pending',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text('10-05-2025'),
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
