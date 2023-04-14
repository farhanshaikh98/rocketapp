import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketsapp/view/rocketdetail/rocket_detail.dart';

import '../../controllers/homerockets/home_rockets_controller.dart';

class HomeRockets extends StatelessWidget {
  HomeRockets({super.key});

  HomeRocketController myhomerocketcontroller = Get.put(HomeRocketController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () => myhomerocketcontroller.isDataLoading.value
            ? Center(child: CircularProgressIndicator())
            : SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "SpaceX",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: myhomerocketcontroller.result.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 5,

                              margin: EdgeInsets.all(10),
                              // semanticContainer: true,
                              // clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      myhomerocketcontroller
                                          .result[index].flickrImages[1],
                                    ),
                                    maxRadius: 50,
                                  ),
                                  Column(
                                    children: [
                                      // Text(
                                      //   "${myhomerocketcontroller.result[index].name}",
                                      //   style: TextStyle(fontSize: 20),
                                      // ),

                                      // SizedBox(
                                      //     height: 300,
                                      //     child: PageView(
                                      //       children: [
                                      //         Image.network(
                                      //           myhomerocketcontroller
                                      //               .result[index]
                                      //               .flickrImages[0],
                                      //         ),
                                      //         Image.network(
                                      //           myhomerocketcontroller
                                      //               .result[index]
                                      //               .flickrImages[1],
                                      //         ),
                                      //       ],
                                      //     )),
                                      // Text(
                                      //   "${myhomerocketcontroller.result[index].country}",
                                      //   style: TextStyle(fontSize: 20),
                                      // ),

                                      Text(
                                        "${myhomerocketcontroller.result[index].engines.number}",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text(
                                        "${myhomerocketcontroller.result[index].id}",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            print(myhomerocketcontroller
                                                .result[index]);
                                            Get.to(
                                              RocketDetailPage(
                                                  detail: myhomerocketcontroller
                                                      .result[index]),
                                            );
                                          },
                                          icon: Icon(
                                              Icons.arrow_forward_ios_outlined))
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
