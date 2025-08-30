import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}
class TermsCheckbox extends StatefulWidget {
   const TermsCheckbox({Key? key}) : super(key: key);

  @override
  State<TermsCheckbox> createState() => _TermsCheckboxState();
}

class _TermsCheckboxState extends State<TermsCheckbox> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _checked,
      onChanged: (bool? value) {
        setState(() {
          _checked = value ?? false;
        });
      },
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

  

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final  firstNameController = TextEditingController();
  final  lastNameController = TextEditingController();
  final  emailController = TextEditingController();
  final  phoneController = TextEditingController();
  final  dobController = TextEditingController();
  final  passwordController = TextEditingController();
  final  confirmPasswordController = TextEditingController();
  String? selectedCountry; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            // <-- Added for overflow fix
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PayPal Registration',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'Sign up for a new PayPal account',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'First Name',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: firstNameController,
                            style: TextStyle(fontSize: 12),
                            maxLength: 20,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter your first name',
                              counterText: '', // Hide counter
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Last Name',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: lastNameController,
                            style: TextStyle(fontSize: 12),
                            maxLength: 20,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter your Last name',
                              counterText: '', // Hide counter
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Email',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: emailController,
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your email',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                TextField(
                  maxLength: 10,
                  controller: phoneController,
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Phone Number',
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Date of Birth',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: dobController,
                            style: TextStyle(fontSize: 12),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'DD.MM.YYYY',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Country/Religion',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Select country',
                            ),
                            value: selectedCountry, 
                            items: <String>['USA', 'Canada', 'UK', 'India'].map(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                );
                              },
                            ).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedCountry = newValue; 
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'password',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      style: TextStyle(fontSize: 12),
                      maxLength: 8,
                      decoration: InputDecoration(
                        helperText:
                            'Minimum 8 characters with a number and a letter',
                        border: OutlineInputBorder(),
                        hintText: 'create password',
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Confirm Password',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      maxLength: 8,
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Re-enter password',
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        const TermsCheckbox(),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "I agree to the terms and conditions.",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          print('first name: ${firstNameController.text}');
                          print('last name: ${lastNameController.text}');
                          print('email: ${emailController.text}');
                          print('phone: ${phoneController.text}');
                          print('dob: ${dobController.text}');
                          print('password: ${passwordController.text}');
                          print('confirm password: ${confirmPasswordController.text}');
                          print('Country: $selectedCountry'); 
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                        ),
                        child: Text('Register', style: TextStyle(fontSize: 16)),
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
  }
}
class CountryDropdown extends StatefulWidget {
  const CountryDropdown({super.key});

  @override
  State<CountryDropdown> createState() => _CountryDropdownState();
}

class _CountryDropdownState extends State<CountryDropdown> {
  String selectedCountry = 'India';
  final List<String> countries = ['India', 'USA', 'UK', 'Canada', 'Australia'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton<String>(
        value: selectedCountry,
        items: countries.map((String country) {
          return DropdownMenuItem<String>(value: country, child: Text(country));
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedCountry = newValue!;
          });
        },
        hint: Text('Select country'),
      ),
    );
  }
}
