import 'package:cip_website/config/app_colors.dart';
import 'package:cip_website/config/storage_service.dart';
import 'package:fluttertoast/fluttertoast.dart';


/// Displays a success toast message.
/// [message] is the text to be shown in the toast.
/// The background color is green, and the position is at the bottom.
void showSuccessToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: AppColors.successColor,
    gravity: ToastGravity.BOTTOM,
  );
}

/// Displays an error toast message.
/// [message] is the text to be shown in the toast.
/// The background color is red, and the position is at the bottom.
void showErrorToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: AppColors.errorColor,
    gravity: ToastGravity.BOTTOM,
  );
}

/// Displays a network error toast message.
/// [message] is the text to be shown in the toast.
/// The background color is red, and the position is at the top.
void showNetworkErrorToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    backgroundColor: AppColors.errorColor,
    gravity: ToastGravity.TOP,
  );
}

/// Retrieves the last user login token from secure storage.
/// Returns the token if found, otherwise returns null.
Future<String?> getToken() async {
  var token = await storageService.readSecureStorage("ecos-user-token");
  return token;
}

// /// Formats a [DateTime] object into a string with "dd/MM/yyyy" format.
// /// Example: 9-9-2024 -> "09/09/2024".
// String formatDateWithSlashFromDate(DateTime date) {
//   return DateFormat("dd/MM/yyyy").format(date);
// }

// /// Formats a [DateTime] object into a string with "dd-MM-yyyy" format.
// /// Example: 9/9/2024 -> "09-09-2024".
// String formatDateWithDashFromDate(DateTime date) {
//   return DateFormat("dd-MM-yyyy").format(date);
// }

// /// This function takes a string in the format "dd-MM-yyyy" and returns
// /// a formatted `DateTime` object as a string.
// /// Split the input date string by the '-' delimiter.
// /// Example: "02-10-2024" becomes ["02", "10", "2024"].
// /// Construct a DateTime object using the parts from the split string.
// /// dateParts[2] -> year ("2024")
// /// dateParts[1] -> month ("10")
// /// dateParts[0] -> day ("02")
// String formatDateWithDashFromString(String date) {
//   // Check if the date string contains time by looking for a space.
//   var hasTime = date.contains(' ');

//   // If the string has time, extract only the date part.
//   var onlyDate = hasTime ? date.split(' ')[0] : date;

//   // Split the date part by the '-' delimiter (["yyyy", "MM", "dd"]).
//   var dateParts = onlyDate.split('-');
//   // print(dateParts);
//   // Construct a DateTime object using the parts from the split string.
//   var formatDate = DateTime(
//     int.parse(dateParts[2]), // year
//     int.parse(dateParts[1]), // month
//     int.parse(dateParts[0]), // day
//   );

//   // Return the DateTime object as a formatted string.
//   return formatDate.toString().split(' ')[0]; // Return only the date part.
// }

// String formatDateSlashToDashFromSplit(String date) {
//   // Check if the date string contains time by looking for a space.
//   var hasTime = date.contains(' ');

//   // If the string has time, extract only the date part.
//   var onlyDate = hasTime ? date.split(' ')[0] : date;

//   // Split the date part by the '-' delimiter (["yyyy", "MM", "dd"]).
//   var dateParts = onlyDate.split('/');
//   // print(dateParts);
//   // Construct a DateTime object using the parts from the split string.
//   var formatDate = DateTime(
//     int.parse(dateParts[2]), // year
//     int.parse(dateParts[1]), // month
//     int.parse(dateParts[0]), // day
//   );

//   // Return the DateTime object as a formatted string.
//   return formatDate.toString().split(' ')[0]; // Return only the date part.
// }

// /// Converts a date string from "dd/MM/yyyy" format to "dd-MM-yyyy" format.
// /// The [date] string must be in "dd/MM/yyyy" format.
// /// Example: "09/09/2024" -> "09-09-2024".
// String changeDateFormatFromString(String date) {
//   DateTime dateform = DateFormat("dd/MM/yyyy").parse(date);
//   return DateFormat("dd-MM-yyyy").format(dateform);
// }

// /// Converts a date string from "dd-MM-yyyy" format to "dd/MM/yyyy" format.
// /// The input [date] string must be in "dd-MM-yyyy" format.
// /// Example: "09-09-2024" -> "09/09/2024".
// String formatDateWithSlashFromString(String date) {
//   return DateFormat("dd/MM/yyyy").format(DateTime.parse(date));
// }

// /// Returns the number of days in a given [month] for a specified [year].
// /// Takes into account leap years for February.
// int getDaysInMonth(int year, int month) {
//   if (month == DateTime.february) {
//     final bool isLeapYear =
//         (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0);
//     return isLeapYear ? 29 : 28;
//   }
//   const List<int> daysInMonth = <int>[
//     31,
//     -1,
//     31,
//     30,
//     31,
//     30,
//     31,
//     31,
//     30,
//     31,
//     30,
//     31,
//   ];
//   return daysInMonth[month - 1];
// }

// /// Converts an entire sentence to camel case, where the first letter of each word
// /// is capitalized and the rest are in lowercase.
// /// Example: "hello world" -> "Hello World".
// String toCamelCase(String text) {
//   // Split the input text into individual words based on spaces.
//   List<String> words = text.split(' ');

//   // Map over each word, capitalize the first letter and lowercase the rest.
//   List<String> capitalizedWords = words.map((word) {
//     if (word.isEmpty) return ""; // Handle any empty strings.
//     return word[0].toUpperCase() + word.substring(1).toLowerCase();
//   }).toList();

//   // Join the capitalized words back into a single string.
//   return capitalizedWords.join(' ');
// }

// final urlRegExp = RegExp(
//   r'(https?:\/\/[^\s<]+)(?![^<>]*>)',
//   caseSensitive: false,
// );

// /// Create fingerprint token for login
// /// params context type
// /// return ui string
// String encodeThumbLoginToken({required String id, required String email}) {
//   var uI = id;
//   Codec<String, String> stringToBase64 = utf8.fuse(base64);
//   String uIEncoded = stringToBase64.encode(uI.toString());

//   String emialEncoded = stringToBase64.encode(email.toString());
//   // var time = DateTime.now();
//   String timeEncode = stringToBase64.encode(DateTime.now().toString());
//   return "$uIEncoded|$emialEncoded|$timeEncode";
// }

// Future<String?> decodeThumbLoginToken({required String encodedToken}) async {
//   Codec<String, String> stringToBase64 = utf8.fuse(base64);
//   List<String> parts = encodedToken.split('|');

//   if (parts.length != 3) {
//     return null;
//     // throw const FormatException("Invalid encoded token format.");
//   }

//   // String idDecoded = stringToBase64.decode(parts[0]);
//   String emailDecoded = stringToBase64.decode(parts[1]);
//   // String timeDecoded = stringToBase64.decode(parts[2]);

//   return emailDecoded;
// }

// // Quill Image Embedding Functions Start

// Future<String> deltaToHtml(Delta delta) async {
//   // Use `compute` to run the heavy processing in a background isolate
//   return await compute(_convertDeltaToHtml, delta);
// }

// // This function will be executed in a background isolate
// Future<String> _convertDeltaToHtml(Delta delta) async {
//   StringBuffer htmlBuffer = StringBuffer();

//   for (var op in delta.toList()) {
//     if (op.value is String) {
//       var text = op.value as String;
//       Map<String, dynamic>? attributes = op.attributes;
//       if (attributes != null) {
//         if (attributes.containsKey('bold')) {
//           htmlBuffer.write('<b>$text</b>');
//         } else if (attributes.containsKey('italic')) {
//           htmlBuffer.write('<i>$text</i>');
//         } else if (attributes.containsKey('underline')) {
//           htmlBuffer.write('<u>$text</u>');
//         } else {
//           htmlBuffer.write(text);
//         }
//       } else if (text.trim().isEmpty) {
//         htmlBuffer.write('<br/>');
//       } else {
//         htmlBuffer.write(text.trim());
//       }
//     } else if (op.value is Map) {
//       var embed = op.value;
//       if (embed['image'] != null) {
//         var imageUrl = embed['image'];
//         if (imageUrl.startsWith('data:image/')) {
//           // It's already a base64 string, so just include it as-is
//           htmlBuffer.write(
//             '<img src="$imageUrl" alt="image" width="300" height="300" />',
//           );
//         } else {
//           String imageTag = await _processImage(imageUrl);
//           htmlBuffer.write(imageTag);
//         }
//       } else if (embed['video'] != null) {
//         htmlBuffer.write(embed['video'].trim());
//       }
//     }
//   }
//   return htmlBuffer.toString();
// }

// // Separate function to handle image processing
// Future<String> _processImage(String imageUrl) async {
//   try {
//     // Read the image file
//     final File file = File(imageUrl);
//     final bytes = await file.readAsBytes();

//     // Decode the image
//     img.Image? image = img.decodeImage(bytes);
//     if (image != null) {
//       // Resize the image to 300x300
//       img.Image resizedImage = img.copyResize(image, width: 300, height: 300);

//       // Convert the resized image to bytes
//       final resizedBytes = img.encodePng(resizedImage);

//       // Convert resized image bytes to base64
//       String base64Image = base64Encode(resizedBytes);

//       // Get the image extension to set the correct data URI format
//       String extension = imageUrl.split('.').last;
//       String mimeType = 'image/$extension';

//       // Construct the base64 image tag with 300x300 size
//       return '<img src="data:$mimeType;base64,$base64Image" alt="image" width="300" height="300" />';
//     }
//   } catch (e) {
//     // Log the error if needed
//     // log("Error processing image: $e");
//   }
//   // Return a placeholder if processing fails
//   return '<img src="" alt="image failed to load " />';
// }

// Future<String> saveImageLocally(List<int> imageBytes, String fileName) async {
//   final directory = await getApplicationDocumentsDirectory();
//   final imagePath = '${directory.path}/${basename(fileName)}';
//   final imageFile = File(imagePath);
//   await imageFile.writeAsBytes(imageBytes);
//   return imagePath;
// }

// // Text Editor Image Embeded Builder

// RegExp base64RegExp = RegExp(
//   r'^(?:[A-Za-z0-9+\/][A-Za-z0-9+\/][A-Za-z0-9+\/][A-Za-z0-9+\/])*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=|[A-Za-z0-9+\/]{4})$',
// );

// bool isBase64(String str) {
//   return str.contains('base64');
// }

// bool isHttpBasedUrl(String url) {
//   try {
//     final uri = Uri.parse(url.trim());
//     return uri.isScheme('HTTP') || uri.isScheme('HTTPS');
//   } catch (_) {
//     return false;
//   }
// }

// bool isImageBase64(String imageUrl) {
//   return !isHttpBasedUrl(imageUrl) && isBase64(imageUrl);
// }

// class MyQuillEditorImageEmbedBuilder extends EmbedBuilder {
//   MyQuillEditorImageEmbedBuilder({required this.removeImage});
//   void Function(String imageSource) removeImage;
//   // final quillExtension.QuillEditorImageEmbedConfigurations configurations;

//   @override
//   String get key => BlockEmbed.imageType;

//   @override
//   bool get expanded => false;
//   String standardizeImageUrl(String url) {
//     if (url.contains('base64,')) {
//       return url.split(',')[1];
//     }
//     return url;
//   }

//   @override
//   Widget build(
//     BuildContext context,
//     QuillController controller,
//     Embed node,
//     bool readOnly,
//     bool inline,
//     TextStyle textStyle,
//   ) {
//     assert(!kIsWeb, 'Please provide image EmbedBuilder for Web');

//     final imageSource = isImageBase64(node.value.data)
//         ? standardizeImageUrl(node.value.data)
//         : node.value.data;
//     return GestureDetector(
//       onTapDown: (ad) {
//         Offset position = ad.globalPosition;
//         showMenu(
//           context: context,
//           position: RelativeRect.fromLTRB(
//             position.dx, // Adjust horizontal position as needed
//             position.dy, // Adjust vertical position as needed
//             position.dx, // Width of the menu
//             position.dy, // Height of the menu
//           ),
//           items: [
//             PopupMenuItem(
//               onTap: () {
//                 removeImage(node.value.data);
//               },
//               child: const Text(
//                 "Remove",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ],
//         );
//       },
//       child: Builder(
//         builder: (context) {
//           return Padding(
//             padding: const EdgeInsets.all(10),
//             child: isImageBase64(node.value.data)
//                 ? Image(image: MemoryImage(base64.decode(imageSource)))
//                 : Image(image: FileImage(File(node.value.data))),
//           );
//         },
//       ),
//     );
//   }
// }

// class DateTextFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//     TextEditingValue oldValue,
//     TextEditingValue newValue,
//   ) {
//     //this fixes backspace bug
//     if (oldValue.text.length >= newValue.text.length) {
//       return newValue;
//     }
//     var dateText = _addSeperators(newValue.text, '-');
//     return newValue.copyWith(
//       text: dateText,
//       selection: updateCursorPosition(dateText),
//     );
//   }

//   String _addSeperators(String value, String seperator) {
//     value = value.replaceAll('-', '');
//     var newString = '';
//     for (int i = 0; i < value.length; i++) {
//       newString += value[i];
//       if (i == 1) {
//         newString += seperator;
//       }
//     }

//     return newString;
//   }

//   TextSelection updateCursorPosition(String text) {
//     return TextSelection.fromPosition(TextPosition(offset: text.length));
//   }
// }

