
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buy Now"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Choose Payment Method",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PaymentMethodButton(
                    imagePath: "https://www.logodee.com/wp-content/uploads/2021/10/25.jpg",
                    label: "BKash",
                    onPressed: () {
                      // Handle BKash button press
                    },
                  ),
                  PaymentMethodButton(
                    imagePath: "https://seeklogo.com/images/D/dutch-bangla-rocket-logo-B4D1CC458D-seeklogo.com.png",
                    label: "Rocket",
                    onPressed: () {
                      // Handle Rocket button press
                    },
                  ),
                  PaymentMethodButton(
                    imagePath: "https://logowik.com/content/uploads/images/219_visa.jpg",
                    label: "Visa",
                    onPressed: () {
                      // Handle Visa button press
                    },
                  ),
                  PaymentMethodButton(
                    imagePath: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/1280px-MasterCard_Logo.svg.png",
                    label: "Mastercard",
                    onPressed: () {
                      // Handle Mastercard button press
                    },
                  ),
                 
                ],
              ),
              SizedBox(height: 16.0),
              DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
                    child: Text("Credit Card"),
                    value: "Credit Card",
                  ),
                  DropdownMenuItem<String>(
                    child: Text("Debit Card"),
                    value: "Debit Card",
                  ),
                  // Add more payment options as needed
                ],
                onChanged: (value) {
                  // Handle dropdown selection
                },
                hint: Text("Select Payment Type"),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Go back to the first page
                },
                child: Text("Go Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentMethodButton extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onPressed;

  PaymentMethodButton({
    required this.imagePath,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imagePath,
          height: 60.0,
          width: 60.0,
        ),
        SizedBox(height: 8.0),
        Text(label),
        SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: onPressed,
          child: Text("Select"),
        ),
      ],
    );
  }
}
