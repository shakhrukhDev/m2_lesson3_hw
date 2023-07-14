import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m2_lesson3_hw/model/biograph_item_model.dart';
import 'package:m2_lesson3_hw/model/home_item_model.dart';
import 'package:m2_lesson3_hw/utils/app_colors.dart';
import 'package:m2_lesson3_hw/utils/app_icons.dart';
import 'package:m2_lesson3_hw/utils/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 49,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 39,
                    width: 39,
                    decoration: BoxDecoration(
                      color: AppColors.C_F9F6F4,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Center(
                      child: Icon(Icons.close),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                const Text(
                  'Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: AppColors.C_393938),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 129,
              width: 350,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: HomeItems.items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: 274,
                        decoration: BoxDecoration(
                          color: AppColors.C_F9F6F4,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                AppImages.mDoctor,
                                width: 82,
                                height: 70,
                              ),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 34,
                                ),
                                Text(
                                  'Zesan.H',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Medical ID',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 350,
              width: double.infinity,
              child: GridView.builder(
                  padding: EdgeInsets.all(8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 158 / 129,
                  ),
                   physics: BouncingScrollPhysics(),
                  itemCount: BiographItem.bItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.C_F9F6F4,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 34,
                            ),
                            Text(
                              BiographItem.bItems[index].item1,
                              style: TextStyle(
                                  color: AppColors.C_393938,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              BiographItem.bItems[index].item2,
                              style: TextStyle(
                                  color: AppColors.C_393938.withOpacity(0.4),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Recent Actibites',
                  style: TextStyle(color: AppColors.C_393938),
                ),
                const SizedBox(
                  width: 150,
                ),
                Text(
                  'View all',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: AppColors.C_393938.withOpacity(0.5)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                width: 377,
                height: 78,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Booked an Appointment with \nDr Rebbeka",
                    ),
                    SizedBox(width: 70,),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "View",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.C_2B67F6,
                          fixedSize: Size(54, 25),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7))),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
