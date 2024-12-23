import 'package:energy_monitoring_app/core/theme/app_pallet.dart';
import 'package:flutter/material.dart';

class LoginWithStatePage extends StatefulWidget {
  const LoginWithStatePage({super.key});

  @override
  State<LoginWithStatePage> createState() => _LoginWithStatePageState();
}

class _LoginWithStatePageState extends State<LoginWithStatePage> {
  String? _selectedState;

  final List<String> _states = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Back Arrow Button
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: AppPalette.secondaryColor),
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the previous page
                  },
                ),
              ),
              const SizedBox(height: 20),

              // App logo or Title
              Text(
                "eyrah",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: AppPalette.primaryColor,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Username Field
              const TextField(
                decoration: InputDecoration(
                  labelText: "User Name",
                  prefixIcon: Icon(Icons.person, color: AppPalette.secondaryColor),
                ),
              ),
              const SizedBox(height: 20),

              // Select State Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: "Select State",
                  prefixIcon: Icon(Icons.location_on, color: AppPalette.secondaryColor),
                ),
                value: _selectedState,
                items: _states.map((state) {
                  return DropdownMenuItem(
                    value: state,
                    child: Text(state),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedState = value;
                  });
                },
              ),
              const SizedBox(height: 20),

              // Password Field
              const TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock, color: AppPalette.secondaryColor),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 30),

              // Proceed Button
              ElevatedButton(
                onPressed: () {
                  // Handle proceed logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppPalette.primaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text(
                  "PROCEED",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
