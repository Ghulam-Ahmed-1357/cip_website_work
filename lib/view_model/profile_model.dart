class ProfileModel {
  final int id;
  final int? shiftId;
  final int? reportingTo;
  final String name;
  final String email;

  final String? phone;
  final String? whatsappNumber;
  final String? additionalNumberOne;
  final String? additionalNumberTwo;
  final String? profilePhoto;
  final String? joiningDate;
  final String? confirmationDate;

  final String? emailVerfiedAt;
  final String? status;
  final String? profilePhotoUrl;
  final String? formattedStatus;
  final String? userRole;
  final List? companies;
  final List? departments;
  final List? designations;
  final String? shift;
  final String? reportsTo;
  final String? reportsToReportsTo;

  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;

  ProfileModel({
    required this.id,
    required this.shiftId,
    required this.reportingTo,
    required this.name,
    required this.email,
    required this.userRole,
    this.phone,
    this.whatsappNumber,
    this.additionalNumberOne,
    this.additionalNumberTwo,
    this.profilePhoto,
    this.joiningDate,
    this.confirmationDate,
    this.emailVerfiedAt,
    this.status,
    this.profilePhotoUrl,
    this.formattedStatus,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    // new fields
    this.companies,
    this.departments,
    this.designations,
    this.reportsTo,
    this.reportsToReportsTo,
    this.shift,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json["id"],
        shiftId: json["shift_id"],
        reportingTo: json["reporting_to"],
        name: json["name"],
        email: json["email"],
        userRole: json["user_role"],
        phone: json["phone"],
        whatsappNumber: json["whatsapp_number"],
        additionalNumberOne: json["additional_number_one"],
        additionalNumberTwo: json["additional_number_two"],
        profilePhoto: json["profile_photo"],
        joiningDate: json["joining_date"],
        confirmationDate: json["confirmation_date"],
        emailVerfiedAt: json["email_verified_at"],
        status: json["status"],
        profilePhotoUrl: json["profile_photo_url"],
        formattedStatus: json["formatted_status"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
        companies: json["companies"],
        departments: json["departments"],
        designations: json["designations"],
        shift: json["shift"],
        reportsTo: json["reports_to"],
        reportsToReportsTo: json["reports_to_reports_to"],
      );
}

class SensitiveProfileModel {
  final String? cnic;
  final String? dob;
  final String? bloodGroup;
  final String? basicSalary;

  final String? bankName;
  final String? accountTitle;
  final String? bankAccountNo;

  final String? emergencyContactName;
  final String? emergencyContactRelation;
  final String? emergencyContactNo;
  final String? joiningDate;
  final String? confirmationDate;
  final String? personalEmail;
  final String? personalNumber;
  final String? grade;
  final String? address;

  SensitiveProfileModel({
    this.accountTitle,
    this.bankAccountNo,
    this.bankName,
    this.basicSalary,
    this.bloodGroup,
    this.cnic,
    this.dob,
    this.emergencyContactName,
    this.emergencyContactNo,
    this.emergencyContactRelation,
    this.joiningDate,
    this.address,
    this.confirmationDate,
    this.grade,
    this.personalEmail,
    this.personalNumber,
  });

  factory SensitiveProfileModel.fromJson(Map<String, dynamic> json) => SensitiveProfileModel(
        accountTitle: json["account_title"],
        bankAccountNo: json["bank_account_no"],
        bankName: json["bank_name"],
        basicSalary: json["basic_salary"],
        bloodGroup: json["blood_group"],
        cnic: json["cnic"],
        dob: json["dob"],
        emergencyContactName: json["emergency_contact_name"],
        emergencyContactNo: json["emergency_contact_no"],
        emergencyContactRelation: json["emergency_contact_relation"],
        joiningDate: json["joining_date"],
        address: json["address"],
        confirmationDate: json["confirmation_date"],
        grade: json["grade"],
        personalEmail: json["personal_email"],
        personalNumber: json["personal_number"],
      );
}
