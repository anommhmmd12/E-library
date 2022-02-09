import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TabController _tabController = TabController(length: 5, vsync: this);

    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  size.height * .02, 0, size.height * 0.02, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 400,
                    child: TabBar(
                        controller: _tabController,
                        labelColor: Colors.black,
                        isScrollable: true,
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(color: Colors.orange)),
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            text: "For You",
                          ),
                          Tab(
                            text: "Novel",
                          ),
                          Tab(
                            text: "Top Selling",
                          ),
                          Tab(
                            text: "New Realeses",
                          ),
                          Tab(
                            text: "Religion",
                          )
                        ]),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    width: double.maxFinite,
                    height: size.height * 1,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        ListView.builder(
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: CarouselSlider(
                                      options: CarouselOptions(
                                          height: 150,
                                          autoPlay: true,
                                          viewportFraction: 1),
                                      items: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              color: Colors.orange[700]),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              color: Colors.orange[700]),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              color: Colors.orange[700]),
                                        ),
                                      ],
                                    ), 
                                    ),
                                   
                                    SizedBox(
                                      height: size.height * 0.03,
                                    ),
                                    Text(
                                      "Buku Baru Rilis",
                                      style: TextStyle(
                                          fontSize: size.height * 0.03,
                                          color: Colors.grey[800],
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Yang terbaru",
                                          style: TextStyle(
                                            fontSize: size.height * 0.02,
                                            color: Colors.grey[500],
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.arrow_forward))
                                      ],
                                    ),
                                    Container(
                                        height: size.height * 0.3,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                  EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                        ),
                                      SizedBox(
                                      height: size.height * 0.03,
                                    ),
                                    Text(
                                      "Buku Baru Rilis",
                                      style: TextStyle(
                                          fontSize: size.height * 0.03,
                                          color: Colors.grey[800],
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Yang terbaru",
                                          style: TextStyle(
                                            fontSize: size.height * 0.02,
                                            color: Colors.grey[500],
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.arrow_forward))
                                      ],
                                    ),
                                    Container(
                                        height: size.height * 0.3,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                  EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                        ),
                                          SizedBox(
                                      height: size.height * 0.03,
                                    ),
                                    Text(
                                      "Buku Baru Rilis",
                                      style: TextStyle(
                                          fontSize: size.height * 0.03,
                                          color: Colors.grey[800],
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Yang terbaru",
                                          style: TextStyle(
                                            fontSize: size.height * 0.02,
                                            color: Colors.grey[500],
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.arrow_forward))
                                      ],
                                    ),
                                    Container(
                                        height: size.height * 0.3,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                  EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  margin: EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  width: size.height * 0.18,
                                                  height: size.height * 0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.orange[300],
                                                  ),
                                                ),
                                                Text(
                                                  "Judul Buku",
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "Harga Buku",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey[500]),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                        ),
                                  ],
                                ),
                              );
                            }),
                        Text("here"),
                        Text("halo"),
                        Text("halo"),
                        Text("halo"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
