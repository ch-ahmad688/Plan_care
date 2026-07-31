import 'package:flutter/material.dart';
import 'Detail Model.dart';
import 'Model.dart';

class Plants_explain extends StatelessWidget {
  final Model selectedPlants;

  Plants_explain({super.key, required this.selectedPlants});

  final List<Detail_model> left = [
    Detail_model(id: '1', name: 'Frequency'),
    Detail_model(id: '2', name: 'Water'),
    Detail_model(id: '3', name: 'Temperature'),
    Detail_model(id: '4', name: 'Light'),
  ];

  final List<Detail_model> right = [
    Detail_model(id: '1', name: '1/week'),
    Detail_model(id: '2', name: '250 Ml'),
    Detail_model(id: '3', name: '15 - 24 °C'),
    Detail_model(id: '4', name: 'Low'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text(
                    selectedPlants.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/Icon/Vector(4).png',
                    width: 20,
                    height: 20,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              Image.asset(
                selectedPlants.image,
                height: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: left.length,
                  itemBuilder: (context, index) {
                    final leftItem = left[index];
                    final rightItem = right.firstWhere(
                          (r) => r.id == leftItem.id,
                      orElse: () => Detail_model(id: '', name: 'N/A'),
                    );
        
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center, // Added for vertical alignment
                        children: [
                          // Left container - Fixed width
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffF1F5F9),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              leftItem.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          // Right container - Fixed width with alignment
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffD2EFDA),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              rightItem.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              // Center the buttons
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xff0F4336),
                    ),
                    child: const Center(
                      child: Text(
                        'Update all information',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    height: 50,
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xff0F4336),
                    ),
                    child: const Center(
                      child: Text(
                        'Manual Change',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
    );
  }
}