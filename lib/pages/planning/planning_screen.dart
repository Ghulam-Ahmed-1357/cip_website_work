import 'package:cip_website/config/app_colors.dart';
import 'package:cip_website/pages/contract/contract_screen.dart';
import 'package:flutter/material.dart';

class PlanningScreen extends StatefulWidget {
  const PlanningScreen({super.key});

  @override
  State<PlanningScreen> createState() => _PlanningScreenState();
}

class TableModel {
  String client;
  String taskName;
  String assignTo;
  int time;
  String usedHours;
  String dueDate;
  String status;

  TableModel({
    required this.client,
    required this.taskName,
    required this.assignTo,
    required this.time,
    required this.usedHours,
    required this.dueDate,
    required this.status,
  });
}

class _PlanningScreenState extends State<PlanningScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedStage;
  String? _selectedUser;
  final _taskNameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _hoursController = TextEditingController();
  final _planDateController = TextEditingController();

  final List<String> stages = [
    'UI/UX Design',
    'Frontend',
    'Backend',
    'Mobile App',
    'Maintenance  ',
  ];
  final List<String> users = ['Azmeer', 'Tauseef', 'Abdullah'];

  List<TableModel> uIUXList = [
    TableModel(
      client: 'ServiceNinjaNow',
      taskName: 'AB Pitch Deck Improvement',
      assignTo: 'Tauseef',
      time: 1,
      usedHours: '02:00:00',
      dueDate: '10-05-2025',
      status: 'pending',
    ),
    TableModel(
      client: 'Accounting Bookkeepers',
      taskName: 'AB Pitch Deck Improvement',
      assignTo: 'Abdullah',
      time: 1,
      usedHours: '02:00:00',
      dueDate: '10-05-2025',
      status: 'pending',
    ),
    TableModel(
      client: 'Islandcare',
      taskName: 'AB Pitch Deck Improvement',
      assignTo: 'Ahmer',
      time: 1,
      usedHours: '-',
      dueDate: '10-05-2025',
      status: 'pending',
    ),
    TableModel(
      client: 'ServiceNinjaNow',
      taskName: 'AB Pitch Deck Improvement',
      assignTo: 'Ahmer',
      time: 1,
      usedHours: '-',
      dueDate: '10-05-2025',
      status: 'pending',
    ),
  ];

  List<TableModel> frontEndList = [
    TableModel(
      client: 'Accounting Bookkeepers',
      taskName: 'ACCBK Bermuda Pages',
      assignTo: 'Azmeer',
      time: 1,
      usedHours: '02:00:00',
      dueDate: '10-05-2025',
      status: 'pending',
    ),
    TableModel(
      client: 'Islandcare',
      taskName: 'AB Pitch Deck Improvement',
      assignTo: 'Farooq',
      time: 1,
      usedHours: '02:00:00',
      dueDate: '10-05-2025',
      status: 'pending',
    ),
    TableModel(
      client: 'ServiceNinjaNow',
      taskName: 'AB Pitch Deck Improvement',
      assignTo: 'Burhan',
      time: 1,
      usedHours: '-',
      dueDate: '10-05-2025',
      status: 'pending',
    ),
    TableModel(
      client: 'Accounting Bookkeepers',
      taskName: 'AB Pitch Deck Improvement',
      assignTo: 'Azmeer',
      time: 1,
      usedHours: '-',
      dueDate: '10-05-2025',
      status: 'pending',
    ),
  ];

  bool isDrawer = true;
  String selectedItem = '';
  final Map<int, TableColumnWidth> columnWidths = {};
  int colIndex = 0;

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
    if (size.width < 1100) {
      setState(() {
        isDrawer = false;
      });
    } else if (size.width > 1100) {
      setState(() {
        isDrawer = true;
      });
    }
    final bool showAssignTo = size.width >= 1500;
    final bool showDependency = size.width >= 1350;
    final bool showStatus = size.width >= 1230;
    final int totalColumns = [
      'taskNo',
      'client',
      'taskName',
      if (showAssignTo) 'assignTo',
      'hrs',
      'usedHours',
      'dueDate',
      if (showDependency) 'dependency',
      if (showStatus) 'status',
      'actions',
    ].length;

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
              : size.width > 1200
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isDrawer = !isDrawer;
                      });
                    },
                    child: Icon(Icons.menu),
                  ),
                )
              : SizedBox(height: 1),

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
                            // scrollDirection: Axis.vertical,
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
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                return Dialog(
                                                  backgroundColor: Colors.white,
                                                  child: SizedBox(
                                                    height: size.height * 0.52,
                                                    width: size.width * 0.4,
                                                    child: Form(
                                                      key: _formKey,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                              20.0,
                                                            ),
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
                                                                  'Add Planning Task',
                                                                  maxLines: 1,
                                                                  style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        20,
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  onTap: () {
                                                                    Navigator.pop(
                                                                      context,
                                                                    );
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .cancel_outlined,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Divider(),
                                                            10.height,
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Stage Name',
                                                                      ),
                                                                      DropdownButtonFormField<
                                                                        String
                                                                      >(
                                                                        decoration: const InputDecoration(
                                                                          hintText:
                                                                              'Stage Name',
                                                                          border:
                                                                              OutlineInputBorder(),
                                                                        ),
                                                                        value:
                                                                            _selectedStage,
                                                                        items: stages
                                                                            .map(
                                                                              (
                                                                                stage,
                                                                              ) => DropdownMenuItem(
                                                                                value: stage,
                                                                                child: Text(
                                                                                  stage,
                                                                                ),
                                                                              ),
                                                                            )
                                                                            .toList(),
                                                                        onChanged: (value) => setState(
                                                                          () => _selectedStage =
                                                                              value,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  width: 16,
                                                                ),

                                                                Expanded(
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'User',
                                                                      ),

                                                                      DropdownButtonFormField<
                                                                        String
                                                                      >(
                                                                        decoration: const InputDecoration(
                                                                          hintText:
                                                                              'User',
                                                                          border:
                                                                              OutlineInputBorder(),
                                                                        ),
                                                                        value:
                                                                            _selectedUser,
                                                                        items: users
                                                                            .map(
                                                                              (
                                                                                user,
                                                                              ) => DropdownMenuItem(
                                                                                value: user,
                                                                                child: Text(
                                                                                  user,
                                                                                ),
                                                                              ),
                                                                            )
                                                                            .toList(),
                                                                        onChanged: (value) => setState(
                                                                          () => _selectedUser =
                                                                              value,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                              height: 16,
                                                            ),
                                                            Text('Task name'),
                                                            TextFormField(
                                                              controller:
                                                                  _taskNameController,
                                                              decoration: const InputDecoration(
                                                                hintText:
                                                                    'Task name',
                                                                border:
                                                                    OutlineInputBorder(),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 16,
                                                            ),
                                                            Text(
                                                              'Task description',
                                                            ),
                                                            TextFormField(
                                                              controller:
                                                                  _descriptionController,
                                                              maxLines: 4,
                                                              decoration: const InputDecoration(
                                                                hintText:
                                                                    'Task description',
                                                                border:
                                                                    OutlineInputBorder(),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 16,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Hours',
                                                                      ),
                                                                      TextFormField(
                                                                        controller:
                                                                            _hoursController,
                                                                        keyboardType:
                                                                            TextInputType.number,
                                                                        decoration: const InputDecoration(
                                                                          hintText:
                                                                              'Hours',
                                                                          border:
                                                                              OutlineInputBorder(),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  width: 16,
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Plan date',
                                                                      ),
                                                                      TextFormField(
                                                                        controller:
                                                                            _planDateController,
                                                                        onChanged: (value) {
                                                                          _planDateController
                                                                              .text;
                                                                        },
                                                                        readOnly:
                                                                            true,
                                                                        onTap: () async {
                                                                          DateTime?
                                                                          pickedDate = await showDatePicker(
                                                                            context:
                                                                                context,
                                                                            firstDate: DateTime(
                                                                              2000,
                                                                            ),
                                                                            lastDate: DateTime(
                                                                              2027,
                                                                            ),
                                                                            initialDate:
                                                                                DateTime.now(),
                                                                          );

                                                                          if (pickedDate !=
                                                                              null) {
                                                                            String
                                                                            formattedDate =
                                                                                "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
                                                                            _planDateController.text =
                                                                                formattedDate;
                                                                          }
                                                                        },
                                                                        decoration: const InputDecoration(
                                                                          hintText:
                                                                              'Plan date',
                                                                          border:
                                                                              OutlineInputBorder(),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            30.height,
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Container(
                                                                  width:
                                                                      size.width *
                                                                      0.12,
                                                                  decoration: BoxDecoration(
                                                                    color: AppColors
                                                                        .secondaryColor,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          8,
                                                                        ),
                                                                  ),
                                                                  child: Padding(
                                                                    padding:
                                                                        const EdgeInsets.symmetric(
                                                                          vertical:
                                                                              9,
                                                                        ),
                                                                    child: Center(
                                                                      child: Text(
                                                                        'Add',
                                                                        style: TextStyle(
                                                                          color:
                                                                              Colors.white,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          text: 'Add Planning Task',
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
                                  border: null,
                                  columnWidths: <int, TableColumnWidth>{
                                    colIndex++: FlexColumnWidth(), // taskNo
                                    colIndex++: FlexColumnWidth(), // client
                                    colIndex++: FlexColumnWidth(), // taskName

                                    if (showAssignTo)
                                      colIndex++: FlexColumnWidth(), // assignTo

                                    colIndex++: FlexColumnWidth(), // hrs
                                    colIndex++: FlexColumnWidth(), // usedHours
                                    colIndex++: FlexColumnWidth(), // dueDate

                                    if (showDependency)
                                      colIndex++:
                                          FlexColumnWidth(), // dependency
                                    if (showStatus)
                                      colIndex++: FlexColumnWidth(), // status

                                    colIndex++: FlexColumnWidth(), // actions
                                  },
                                  children: [
                                    TableRow(
                                      children: <Widget>[
                                        _buildHeaderCell('Task no.'),
                                        _buildHeaderCell('Client'),
                                        _buildHeaderCell('Task Name'),
                                        if (showAssignTo)
                                          _buildHeaderCell('Assign To'),
                                        _buildHeaderCell('Hrs'),
                                        _buildHeaderCell('Used Hours'),
                                        _buildHeaderCell('Due Date'),
                                        if (showDependency)
                                          _buildHeaderCell('Dependency'),
                                        if (showStatus)
                                          _buildHeaderCell('Status'),
                                        _buildHeaderCell('Actions'),
                                      ],
                                    ),

                                    TableRow(
                                      children: [
                                        TableCell(
                                          child: Container(
                                            height: size.width * 0.035,
                                            width: double.infinity,
                                            color: Colors.blueGrey.shade200,
                                            padding: const EdgeInsets.all(12),
                                            child: const Text(
                                              'UI/UX DESIGN',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                        for (
                                          int i = 0;
                                          i < totalColumns - 1;
                                          i++
                                        )
                                          TableCell(
                                            child: Container(
                                              height: size.width * 0.035,
                                              color: Colors.blueGrey.shade200,
                                            ),
                                          ),
                                      ],
                                    ),

                                    ...uIUXList
                                        .asMap()
                                        .entries
                                        .map(
                                          (entry) => [
                                            _buildRow(
                                              entry.key + 1,
                                              entry.value.client,
                                              entry.value.taskName,
                                              entry.value.assignTo,
                                              entry.value.time,
                                              entry.value.usedHours,
                                              entry.value.dueDate,
                                              entry.value.status,
                                              showAssignTo: showAssignTo,
                                              showDependency: showDependency,
                                              showStatus: showStatus,
                                            ),
                                            _buildDivider(totalColumns),
                                          ],
                                        )
                                        .expand((widgetPair) => widgetPair),
                                    TableRow(
                                      // decoration: BoxDecoration(border: null),
                                      children: [
                                        TableCell(
                                          // This single cell spans all visual columns
                                          // verticalAlignment:
                                          //     TableCellVerticalAlignment
                                          //         .middle,
                                          child: Container(
                                            height: size.width * 0.035,
                                            width: double.infinity,
                                            color: Colors.blueGrey.shade200,
                                            padding: const EdgeInsets.all(12),
                                            child: const Text(
                                              'Frontend Development',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),

                                        for (
                                          int i = 0;
                                          i < totalColumns - 1;
                                          i++
                                        )
                                          TableCell(
                                            child: Container(
                                              height: size.width * 0.035,
                                              color: Colors.blueGrey.shade200,
                                            ),
                                          ),
                                      ],
                                    ),

                                    ...frontEndList
                                        .asMap()
                                        .entries
                                        .map(
                                          (entry) => [
                                            _buildRow(
                                              uIUXList.length + entry.key + 1,
                                              entry.value.client,
                                              entry.value.taskName,
                                              entry.value.assignTo,
                                              entry.value.time,
                                              entry.value.usedHours,
                                              entry.value.dueDate,
                                              entry.value.status,
                                              showAssignTo: showAssignTo,
                                              showDependency: showDependency,
                                              showStatus: showStatus,
                                            ),
                                            _buildDivider(totalColumns),
                                          ],
                                        )
                                        .expand((widgetPair) => widgetPair),
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

  Widget _buildHeaderCell(String title) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Text(title, style: tileTextStyle(14)),
  );
  TableRow _buildDivider(int totalColumns) {
    return TableRow(
      children: List.generate(totalColumns, (index) {
        return Container(height: 1, color: const Color(0xFFDCDCDC));
      }),
    );
  }

  TableRow _buildRow(
    int taskNo,
    String client,
    String taskName,
    String assignTo,
    int time,
    String usedHours,
    String dueDate,
    String status, {
    required bool showAssignTo,
    required bool showDependency,
    required bool showStatus,
  }) {
    final Size size = MediaQuery.sizeOf(context);
    return TableRow(
      children: [
        _buildCell('#$taskNo'),
        _buildCell(client),
        _buildCell(taskName),
        if (showAssignTo) _buildCell(assignTo),
        _buildCell('${time}hr'),
        _buildCell(usedHours),
        _buildCell(dueDate),
        if (showDependency)
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(child: Text('Task no.')),
            ),
          ),
        if (showStatus)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Center(
                child: Text(status, style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Icon(Icons.done_all, color: Colors.green),
              SizedBox(width: 6),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      backgroundColor: Colors.white,
                      child: SizedBox(
                        height: size.height * 0.3,
                        width: size.width * 0.3,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'ACCBK Bermuda -  Reopen Reason',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(Icons.cancel_outlined),
                                  ),
                                ],
                              ),
                              Divider(),
                              20.height,

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.secondaryColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'AA',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  15.width,
                                  Expanded(
                                    child: TextField(
                                      maxLines: 5,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Add Reason...',
                                        contentPadding: const EdgeInsets.all(
                                          16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              30.height,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => Dialog(
                                          backgroundColor: Colors.white,
                                          child: SizedBox(
                                            height: size.height * 0.4,
                                            width: size.width * 0.3,
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                20.0,
                                              ),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "ACCBK Bermuda - Reopen Reason",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          Navigator.pop(
                                                            context,
                                                          );
                                                        },
                                                        child: Icon(
                                                          Icons.cancel_outlined,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Divider(thickness: 2),
                                                  10.height,
                                                  Row(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: AppColors
                                                              .secondaryColor,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                12.0,
                                                              ),
                                                          child: Text(
                                                            'AA',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "   Ali Ather - Manager",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          color:
                                                              const Color.fromARGB(
                                                                255,
                                                                12,
                                                                12,
                                                                12,
                                                              ),
                                                        ),
                                                      ),
                                                      15.width,
                                                      Text(
                                                        "2 hours ago",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .grey
                                                              .shade400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 20),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                          left: 50,
                                                          right: 40,
                                                        ),
                                                    child: Container(
                                                      color:
                                                          Colors.grey.shade200,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.only(
                                                              left: 10,
                                                              right: 20,
                                                              top: 15,
                                                              bottom: 30,
                                                            ),
                                                        child: Expanded(
                                                          child: RichText(
                                                            text: TextSpan(
                                                              // Text("15 \n"),
                                                              text:
                                                                  "Reopen Reason: ",
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color:
                                                                    const Color.fromARGB(
                                                                      255,
                                                                      219,
                                                                      68,
                                                                      68,
                                                                    ),
                                                              ),
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ac lorem dolor. Praesent a elit ac leo bibendum ullamcorper ac id ligula. Cras tristique pellentesque augue, in scelerisque massa tristique id. Suspendisse tempus pretium nibh, vel ullamcorper nunc bibendum sit amet. Ut commodo vulputate mauris, ac sagittis justo vestibulum eget.",
                                                                  style: TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  60.height,

                                                  Row(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: AppColors
                                                              .secondaryColor,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                12.0,
                                                              ),
                                                          child: Text(
                                                            'AA',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 10),
                                                      Expanded(
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                            border:
                                                                OutlineInputBorder(),
                                                            hintText:
                                                                'Add Comments...',
                                                            contentPadding:
                                                                const EdgeInsets.only(
                                                                  top: 16,
                                                                  bottom: 16,
                                                                  left: 16,
                                                                ),
                                                            suffixIcon: SizedBox(
                                                              width: 85,
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .attach_file,
                                                                  ),
                                                                  5.width,
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: AppColors
                                                                          .secondaryColor,
                                                                    ),
                                                                    child: Padding(
                                                                      padding: const EdgeInsets.symmetric(
                                                                        vertical:
                                                                            8.0,
                                                                        horizontal:
                                                                            12,
                                                                      ),
                                                                      child: Icon(
                                                                        Icons
                                                                            .send,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      // Container(
                                                      //   // child: ,
                                                      //   width: 700,
                                                      //   height: 50,
                                                      //   decoration:
                                                      //       BoxDecoration(
                                                      //         border:
                                                      //             Border.all(
                                                      //               width: 1,
                                                      //             ),
                                                      //       ),
                                                      //   child: Container(
                                                      //     decoration: BoxDecoration(
                                                      //       shape:
                                                      //           BoxShape.circle,
                                                      //       color: AppColors
                                                      //           .secondaryColor,
                                                      //     ),
                                                      //     child: Padding(
                                                      //       padding:
                                                      //           const EdgeInsets.all(
                                                      //             12.0,
                                                      //           ),
                                                      //       child: Icon(
                                                      //         Icons.send,
                                                      //       ),
                                                      //     ),
                                                      //   ),
                                                      // ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: size.width * 0.1,
                                      decoration: BoxDecoration(
                                        color: AppColors.secondaryColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 9,
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Reopen',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                child: Icon(Icons.edit_document),
              ),
              SizedBox(width: 6),
              Icon(Icons.delete, color: Colors.red),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCell(String text) => Padding(
    padding: const EdgeInsets.all(12.0),
    child: Text(text, maxLines: 2, overflow: TextOverflow.ellipsis),
  );
}
