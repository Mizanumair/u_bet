import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneAuthScreen extends StatefulWidget {
  const PhoneAuthScreen({super.key});

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {

  final phoneNumberController = TextEditingController();
  bool loading = false;
  final auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IntlPhoneField(
            controller: phoneNumberController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: 'Phone',
            ),
            onChanged: (phone) {
              print(phone.completeNumber);
            },
            onCountryChanged: (country) {

            },
            validator: (val){
              if (!RegExp(r'^\+[1-9]\d{1,14}$').hasMatch('+${phoneNumberController.text}')) {
                // Invalid phone number format
                print('Invalid phone number format');
                return 'Invalid phone number format';
              }

            },
          ),
          ElevatedButton(onPressed: () {

            auth.verifyPhoneNumber(
                phoneNumber: '+${phoneNumberController.text}',
                verificationCompleted: (_){},
                verificationFailed: (e){

                },
                codeSent: (String verification, int? token){

                },
                codeAutoRetrievalTimeout: (e){});

          }, child: Text('Submit'))
        ],
      ),
    );
  }
}

// class PhoneAuthScreen extends StatefulWidget {
//   @override
//   _PhoneAuthScreenState createState() => _PhoneAuthScreenState();
// }
//
// class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final _phoneNumberController = TextEditingController();
//   final _otpController = TextEditingController();
//   String? _verificationId;
//   bool _isLoading = false;
//
//   void _verifyPhoneNumber() async {
//     setState(() {
//       _isLoading = true;
//     });
//
//     try {
//       final String formattedPhoneNumber = '+${_phoneNumberController.text}';
//
//
//       if (!RegExp(r'^\+[1-9]\d{1,14}$').hasMatch(formattedPhoneNumber)) {
//         // Invalid phone number format
//         print('Invalid phone number format');
//         return;
//       }
//
//       final PhoneVerificationCompleted verificationCompleted = (PhoneAuthCredential credential) async {
//         // Sign the user in with the credential.
//         await _auth.signInWithCredential(credential);
//       };
//
//       final PhoneVerificationFailed verificationFailed = (FirebaseAuthException e) async {
//         // Handle the error.
//         print('Verification Failed: ${e.message}');
//         // Optionally, show an error to the user
//       };
//
//       final PhoneCodeSent codeSent = (String verificationId, [int? forceResendingToken]) async {
//         // The code has been sent to the user's phone number.
//         setState(() {
//           _verificationId = verificationId;
//         });
//       };
//
//       final PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout = (String verificationId) async {
//         // The code was not automatically retrieved.
//         setState(() {
//           _verificationId = verificationId;
//         });
//       };
//
//       await _auth.verifyPhoneNumber(
//         phoneNumber: formattedPhoneNumber,
//         verificationCompleted: verificationCompleted,
//         verificationFailed: verificationFailed,
//         codeSent: codeSent,
//         codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
//       );
//     } catch (e) {
//       print('Error during phone verification: $e');
//       // Handle the error, show an alert, etc.
//     } finally {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }
//
//   void _signInWithPhoneNumber() async {
//     setState(() {
//       _isLoading = true;
//     });
//
//     try {
//       final PhoneAuthCredential credential = PhoneAuthProvider.credential(
//         verificationId: _verificationId!,
//         smsCode: _otpController.text,
//       );
//
//       // Sign the user in with the credential.
//       await _auth.signInWithCredential(credential);
//     } catch (e) {
//       print('Error during sign-in: $e');
//       // Handle the error, show an alert, etc.
//     } finally {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Phone Authentication'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             IntlPhoneField(
//               controller: _phoneNumberController,
//               decoration: InputDecoration(
//                 labelText: 'Phone Number',
//               ),
//               initialCountryCode: 'US',
//               autofocus: true,
//               showCountryFlag: false,
//               onChanged: (phone) {
//                 print(phone.completeNumber);
//               },
//               onCountryChanged: (country) {
//                 print('Country changed to: ' + country.name);
//               },
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: _otpController,
//               decoration: InputDecoration(
//                 labelText: 'OTP Code',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: _isLoading ? null : _verifyPhoneNumber,
//               child: Text('Verify Phone Number'),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: _isLoading ? null : _signInWithPhoneNumber,
//               child: Text('Sign In with Phone Number'),
//             ),
//             if (_isLoading) CircularProgressIndicator(),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
