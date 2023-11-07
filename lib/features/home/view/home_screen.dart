import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
          backgroundColor: const Color(0xFF15181f),
          appBar: AppBar(
            forceMaterialTransparency: true,
            elevation: 9,
            centerTitle: true,
            leading: GestureDetector(
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  print("Clicked");
                },
              ),
              onTap: () {},
            ),
            title: const Text(
              'Currency Converter',
              style: TextStyle(color: Colors.white),
            ),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  text: "Converter",
                ),
                Tab(
                  text: "Calculator",
                ),
              ],
              indicatorColor: Color(0xFF16b460),
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: TextStyle(color: Colors.white),
              padding: EdgeInsets.all(4),
              dividerColor: Color(0xFF),
              labelColor: Color(0xFF16b460),
              overlayColor: MaterialStatePropertyAll(Color(0xd16b460)),
            ),
          ),
          body: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  // Container(
                  //     height: 120,
                  //     decoration: BoxDecoration(
                  //         color: const Color(0xFF15181f),
                  //         borderRadius: BorderRadius.circular(5)),
                  // ),
                  // const SizedBox(
                  //   height: 2,
                  // ),
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color(0xFF24262d),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              "US Dollar \$1 = €0.903",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "\$100",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.arrow_drop_down, color: Color(0xFF16b460), size: 42,),
                                  onPressed: () { print(""); },
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color(0xFF24262d),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              "Euro €1 = \$1.108",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "\$90,286",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.arrow_drop_down, color: Color(0xFF16b460), size: 42,),
                                  onPressed: () { print(""); },
                                  )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xFF20232b),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.settings_backup_restore,
                              color: Color(0xFF16b460),
                              size: 32,
                            ),
                            onPressed: () { print(""); },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.sync_outlined,
                              color: Color(0xFF16b460),
                              size: 48,
                            ),
                            onPressed: () { print(""); },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.settings_backup_restore,
                              color: Color(0xFF16b460),
                              size: 32,
                            ),
                            onPressed: () { print(""); },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: null,
            ),
          ])),
    );
  }
}
