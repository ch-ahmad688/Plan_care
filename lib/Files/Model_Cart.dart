import 'package:flutter/material.dart';
import 'Model.dart';

class ModelCart extends StatelessWidget {
  final Model model;
  const ModelCart({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                model.name,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xff0F4336),
                    width: 5,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    model.image,
                    height: 120,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: const Color(0xff666666),
                        width: 1,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.remove,
                        color: Color(0xff666666),
                        size: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),

                  Container(
                    width: 30,
                    alignment: Alignment.center,
                    child: Text(
                      '1',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff406A3D),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 12),

                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: const Color(0xff666666),
                        width: 1,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Color(0xff666666),
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}