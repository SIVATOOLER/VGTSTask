import 'package:flutter/material.dart';
import 'package:vgts_task/config/app_colors.dart';
import 'package:vgts_task/config/app_layout.dart';

import 'empty_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 70,
        indicatorColor: Colors.white12,
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        elevation: 8,
        backgroundColor: Colors.white,
        destinations: const <NavigationDestination>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: AppColors.blueBackgroundColor,
            ),
            icon: Icon(
              Icons.home,
              color: AppColors.greyTextColor,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.pie_chart,
              color: AppColors.blueBackgroundColor,
            ),
            icon: Icon(
              Icons.pie_chart,
              color: AppColors.greyTextColor,
            ),
            label: 'portfolio',
          ),
          NavigationDestination(
            selectedIcon: Padding(
              padding: EdgeInsets.only(top: 18.0),
              child: CircleAvatar(
                  backgroundColor: AppColors.blueBackgroundColor,
                  child: Icon(
                    Icons.subject_sharp,
                    color: Colors.white,
                    size: 30,
                  )),
            ),
            icon: Padding(
              padding: EdgeInsets.only(top: 18.0),
              child: CircleAvatar(
                  backgroundColor: AppColors.blueBackgroundColor,
                  child: Icon(
                    Icons.subject_sharp,
                    color: Colors.white,
                    size: 30,
                  )),
            ),
            label: "",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.multiline_chart,
              color: AppColors.blueBackgroundColor,
            ),
            icon: Icon(
              Icons.multiline_chart,
              color: AppColors.greyTextColor,
            ),
            label: "Price",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.settings,
              color: AppColors.blueBackgroundColor,
            ),
            icon: Icon(Icons.settings, color: AppColors.greyTextColor),
            label: "",
          ),
        ],
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.blueBackgroundColor,
                AppColors.whiteBackgroundColor
              ],
              stops: [0.35, 0],
            ),
          ),
          child: SafeArea(
            child: selectedIndex == 0
                ? Padding(
                    padding: AppLayout.screenPadding,
                    child: SingleChildScrollView(
                      child: Column(children: [
                        AppLayout.spaceH10,
                        Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.19,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("\$22,650.51",
                                          style: TextStyle(
                                              color: AppColors.whiteTextColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w900)),
                                      Container(
                                        height: 25,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: AppColors.blueButtonColor,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "0.97 %",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 10),
                                            ),
                                            Icon(
                                              Icons.arrow_drop_up,
                                              size: 20,
                                              color: Colors.green,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  AppLayout.spaceH8,
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Account Value",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: AppColors.whiteTextColor)),
                                      Text("Since last purchase",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: AppColors.whiteTextColor))
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 5, bottom: 5),
                                    child: Divider(
                                      thickness: 1,
                                      color: Colors.white54,
                                    ),
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("cash Balance",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: AppColors.whiteTextColor)),
                                      Text("Metal Holdings",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: AppColors.whiteTextColor))
                                    ],
                                  ),
                                  AppLayout.smallH,
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text("\$384.87",
                                              style: TextStyle(
                                                  color:
                                                      AppColors.whiteTextColor,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w900)),
                                          Icon(
                                            Icons.info_outline,
                                            color: AppColors.whiteTextColor,
                                            size: 12,
                                          ),
                                        ],
                                      ),
                                      Text("\$22,265.64",
                                          style: TextStyle(
                                              color: AppColors.whiteTextColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ListView(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: [
                                _buildList(
                                    "Gold",
                                    "22,265.64",
                                    "11.050",
                                    "0.97",
                                    "1,999.00",
                                    "0.4",
                                    AppColors.yellowTextColor,
                                    AppColors.yellowBackgroundColor),
                                _buildList(
                                    "Silver",
                                    "0.00",
                                    "0.000",
                                    "0.0",
                                    "26.20",
                                    "0.15",
                                    AppColors.greyTextColor,
                                    AppColors.greyBackgroundColor),
                                _buildList(
                                    "Platinum",
                                    "0.00",
                                    "0.000",
                                    "0.0",
                                    "1,102.30",
                                    "0.08",
                                    AppColors.pinkTextColor,
                                    AppColors.pinkBackgroundColor),
                              ],
                            ),
                            AppLayout.smallH30,
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Do More With OneGold",
                                  style: TextStyle(
                                      color: AppColors.blackTextColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ),
                            _buildList(
                                "Gold",
                                "22,265.64",
                                "11.050",
                                "0.97",
                                "1,999.00",
                                "0.4",
                                AppColors.yellowTextColor,
                                AppColors.yellowBackgroundColor),
                            _buildList(
                                "Silver",
                                "0.00",
                                "0.000",
                                "0.0",
                                "26.20",
                                "0.15",
                                AppColors.greyTextColor,
                                AppColors.greyBackgroundColor),
                            _buildList(
                                "Platinum",
                                "0.00",
                                "0.000",
                                "0.0",
                                "1,102.30",
                                "0.08",
                                AppColors.pinkTextColor,
                                AppColors.pinkBackgroundColor),
                          ],
                        ),
                      ]),
                    ),
                  )
                : EmptyScreen(selectedIndex),
          )),
    );
  }

  Widget _buildList(metal, totalPrice, ozValue, topPercent, metalPrice, change,
      textColor, backgroundColor) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 2, right: 2),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.listColor,
            borderRadius: BorderRadius.circular(3),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey, blurRadius: 2, offset: Offset(0.35, 0)),
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                    backgroundColor: backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(
                        "assets/icons/metal_icon.png",
                        color: textColor,
                      ),
                    )),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(metal,
                        style: TextStyle(
                            color: textColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w900)),
                    AppLayout.smallH,
                    Text("$ozValue oz",
                        style: TextStyle(
                          color: AppColors.greyTextColor,
                          fontSize: 10,
                        )),
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("\$$totalPrice",
                          style: const TextStyle(
                              color: AppColors.blackTextColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w900)),
                      AppLayout.smallH,
                      Text("$topPercent %",
                          style: const TextStyle(
                            color: AppColors.greyTextColor,
                            fontSize: 10,
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                color: Colors.black12,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Metal Prize",
                        style: TextStyle(
                            color: AppColors.greyTextColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w400)),
                    AppLayout.smallH,
                    Text("\$$metalPrice",
                        style: const TextStyle(
                            color: AppColors.blackTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text("Change",
                        style: TextStyle(
                            color: AppColors.greyTextColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w400)),
                    AppLayout.smallH,
                    Text("-$change %",
                        style: const TextStyle(
                            color: AppColors.percentTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
