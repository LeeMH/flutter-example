import 'package:carrot_market/page/detail.dart';
import 'package:carrot_market/repository/contents_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ContentsRepository contentsRepository = ContentsRepository();
  String _currentLocation = "ara";
  final Map<String, String> locationMap = {
    "ara": "아라동",
    "ora": "오라동",
    "donam": "도남동",
  };

  @override
  void initState() {
    super.initState();
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      elevation: 1,
      title: GestureDetector(
        onTap: () {
          if (kDebugMode) {
            print('클릭');
          }
        },
        child: PopupMenuButton<String>(
          offset: const Offset(0, 25),
          shape: ShapeBorder.lerp(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            1,
          ),
          onSelected: (value) {
            if (kDebugMode) {
              print(value);
            }
            setState(() {
              _currentLocation = value;
            });
          },
          itemBuilder: (context) {
            return [
              const PopupMenuItem(
                value: "ara",
                child: Text("아라동"),
              ),
              const PopupMenuItem(
                value: "ora",
                child: Text("오라동"),
              ),
              const PopupMenuItem(
                value: "donam",
                child: Text("도남동"),
              ),
            ];
          },
          child: Row(
            children: [
              Text(locationMap[_currentLocation]!),
              const Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.tune),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/svg/bell.svg",
            width: 22,
          ),
        ),
      ],
    );
  }

  final oCcy = NumberFormat("#,###", "ko_KR");
  String currencyFormat(String price) {
    var number = int.tryParse(price);
    if (number == null) {
      return price;
    } else {
      return '${oCcy.format(number)}원';
    }
  }

  Future _loadContents() {
    return contentsRepository.loadContentsFromLocation(_currentLocation);
  }

  Widget _bodyWidget() {
    return FutureBuilder(
      future: _loadContents(),
      builder: (buildContext, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasError) {
          return const Center(
            child: Text("데이터 오류"),
          );
        }

        if (snapshot.hasData == false) {
          return const Center(
            child: Text("데이터 없음"),
          );
        }

        List<Map<String, String>> datas =
            snapshot.data as List<Map<String, String>>;
        return ListView.separated(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                if (kDebugMode) {
                  print(datas[index]["title"]);
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailContentView(
                        data: datas[index],
                      );
                    },
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Hero(
                        tag: datas[index]["cid"]!,
                        child: Image.asset(
                          datas[index]["image"]!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              datas[index]["title"]!,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              datas[index]["location"]!,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.3),
                              ),
                            ),
                            Text(
                              currencyFormat(datas[index]["price"]!),
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Expanded(
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/heart_off.svg",
                                      width: 13,
                                      height: 13,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(datas[index]["likes"]!),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              height: 1,
              color: Colors.black.withOpacity(0.5),
            );
          },
          itemCount: 10,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _bodyWidget(),
    );
  }
}
