import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center( // Menggunakan Center untuk menempatkan konten di tengah
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Posisikan konten di tengah secara vertikal
            children: [
              // Placeholder Image
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Icon(
                    Icons.image,
                    size: 100,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(height: 24),

              // Description Text
              Text(
                "SILAKAN LOG IN",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 24),

              // Sign In Button
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
                child: Text("Sign In"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
