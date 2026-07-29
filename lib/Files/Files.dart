import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Files_Controller.dart';
import 'Model_Cart.dart';

class Files extends StatelessWidget {
  const Files({super.key});

  @override
  Widget build(BuildContext context) {
    final FilesController controller = Get.put(FilesController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              _buildTabBar(controller),
              const SizedBox(height: 20),

              Expanded(
                child: Obx(
                      () => _buildContent(controller, controller.selectIndex.value),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabBar(FilesController controller) {
    return Container(
      height: 44,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
      ),
      child: Obx(
            () => Row(
          children: [
            _buildTabItem(
              index: 0,
              label: 'All',
              isActive: controller.selectIndex.value == 0,
              onTap: () => controller.selectIndex.value = 0,
            ),
            _buildTabItem(
              index: 1,
              label: 'Indoor',
              isActive: controller.selectIndex.value == 1,
              onTap: () => controller.selectIndex.value = 1,
            ),
            _buildTabItem(
              index: 2,
              label: 'Outdoor',
              isActive: controller.selectIndex.value == 2,
              onTap: () => controller.selectIndex.value = 2,
            ),
            _buildTabItem(
              index: 3,
              label: 'Garden',
              isActive: controller.selectIndex.value == 3,
              onTap: () => controller.selectIndex.value = 3,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required int index,
    required String label,
    required bool isActive,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 36,
          margin: EdgeInsetsGeometry.symmetric(horizontal: 4,vertical: 2),
          decoration: BoxDecoration(
            color: isActive ? Color(0xff0F4336) : Color(0xffD2EFDA),
            borderRadius: BorderRadius.circular(50),
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.black,
              fontSize: 12,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildContent(FilesController controller,int selectedIndex) {
  switch (selectedIndex) {
    case 0:
      return _buildAllTab(controller);
    case 1:
      return _buildIndoorTab();
    case 2:
      return _buildOutdoorTab();
    case 3:
      return _buildGardenTab();
    default:
      return const SizedBox();
  }
}

Widget _buildAllTab(FilesController controller) {
  return SingleChildScrollView(
    child: Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 0,
            childAspectRatio: 0.5,
          ),
          itemCount: controller.model.length,
          itemBuilder: (context, index) {
            return ModelCart(
              model: controller.model[index],
            );
          },
        ),
        Container(
          height: 50,
          width: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xff0F4336)
          ),
          child: Center(
            child: Text('Add a new plant/flower',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
          ) ,
        )
      ],
    ),
  );
}

Widget _buildIndoorTab() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.green.shade50,
          Colors.teal.shade50,
        ],
      ),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.green.shade200, width: 2),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.eco,
            size: 80,
            color: Colors.green,
          ),
          const SizedBox(height: 20),
          const Text(
            'Indoor Plants',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Total: 12 Files',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildOutdoorTab() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.orange.shade50,
          Colors.red.shade50,
        ],
      ),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.orange.shade200, width: 2),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.park,
            size: 80,
            color: Colors.orange,
          ),
          const SizedBox(height: 20),
          const Text(
            'Outdoor Plants',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Total: 8 Files',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildGardenTab() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.pink.shade50,
          Colors.purple.shade50,
        ],
      ),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.pink.shade200, width: 2),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.grass,
            size: 80,
            color: Colors.pink,
          ),
          const SizedBox(height: 20),
          const Text(
            'Garden Projects',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Total: 15 Files',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    ),
  );
}
