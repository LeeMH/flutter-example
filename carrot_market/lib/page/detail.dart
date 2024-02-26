import 'package:carousel_slider/carousel_slider.dart';
import 'package:carrot_market/components/manner_temporature_widget.dart';
import 'package:carrot_market/utils/data_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailContentView extends StatefulWidget {
  final Map<String, String> data;
  const DetailContentView({super.key, required this.data});

  @override
  State<DetailContentView> createState() => _DetailContentViewState();
}

class _DetailContentViewState extends State<DetailContentView>
    with SingleTickerProviderStateMixin {
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  late int size;
  late List<String> imgList;
  late int _current;
  double scrollPositionToAlpha = 0;
  final ScrollController _scrollController = ScrollController();
  late AnimationController _animationController;
  late Animation _colorTween;
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
    _colorTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _scrollController.addListener(() {
      setState(() {
        scrollPositionToAlpha =
            (_scrollController.offset > 255) ? 255 : _scrollController.offset;
        _animationController.value = scrollPositionToAlpha;
      });
    });
    isFavorite = false;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    size = MediaQuery.of(context).size.width.toInt();
    imgList = [
      widget.data["image"]!,
      widget.data["image"]!,
      widget.data["image"]!,
      widget.data["image"]!,
      widget.data["image"]!,
    ];
    _current = 0;
  }

  Widget _makeIcon(IconData iconData) {
    return AnimatedBuilder(
      animation: _colorTween,
      builder: (BuildContext context, Widget? child) {
        return Icon(
          iconData,
          color: _colorTween.value,
        );
      },
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: Colors.white.withAlpha(scrollPositionToAlpha.toInt()),
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: _makeIcon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: _makeIcon(Icons.share),
        ),
        IconButton(
          onPressed: () {},
          icon: _makeIcon(Icons.more_vert),
        ),
      ],
    );
  }

  Widget _makeSliderWidget() {
    return Container(
      child: Stack(
        children: [
          Expanded(
            child: CarouselSlider(
              items: imgList.map((e) {
                return Image.asset(
                  e,
                  fit: BoxFit.fill,
                  width: size.toDouble(),
                );
              }).toList(),
              //carouselController: _controller,
              options: CarouselOptions(
                height: size.toDouble(),
                initialPage: 0,
                enableInfiniteScroll: false,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  //onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 5.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == entry.key
                          ? Colors.white
                          : Colors.white.withOpacity(0.3),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sellerSimpleInfo() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/user.png"),
            radius: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "개발하는 남자",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              Text(
                "제주시 도담동",
                style: TextStyle(
                  fontSize: 10,
                ),
              )
            ],
          ),
          Expanded(child: MannerTemperatureWidget(mannerTemp: 36.5)),
        ],
      ),
    );
  }

  Widget _line() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 1,
      color: Colors.grey.withOpacity(0.4),
    );
  }

  Widget _contentDetail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          Text(
            widget.data["title"]!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Text(
            "디지털/가전 * 22시간 전",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "선물받은 새상품이고\n상품 꺼내보기만 했습니다\n거래는 직거래만 합니다.",
            style: TextStyle(
              fontSize: 15,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "채팅 3, 관심 17, 조회 295",
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget _otherCellContents() {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "판매자님의 판매 상품",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "모두보기",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodyWidget() {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              _makeSliderWidget(),
              _sellerSimpleInfo(),
              _line(),
              _contentDetail(),
              _line(),
              _otherCellContents(),
            ],
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            delegate: SliverChildListDelegate(
              List.generate(20, (index) {
                return Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 120,
                        color: Colors.red,
                      ),
                    ),
                    const Text(
                      "상품 제목",
                      style: TextStyle(fontSize: 14),
                    ),
                    const Text(
                      "금액",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                );
              }),
            ),
          ),
        ),
      ],
    );
  }

  Widget _bottomNavigationBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: size.toDouble(),
      height: 55,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: SvgPicture.asset(
              isFavorite
                  ? "assets/svg/heart_off.svg"
                  : "assets/svg/heart_on.svg",
              width: 25,
              height: 25,
              colorFilter:
                  const ColorFilter.mode(Colors.orange, BlendMode.srcIn),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: 1,
            height: 40,
            color: Colors.grey.withOpacity(0.3),
          ),
          Column(
            children: [
              Text(
                DataUtils.currencyFormat(widget.data["price"]!),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "가격제안불가",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xfff08f4f),
                  ),
                  child: const Text(
                    "채팅으로 거래하기",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ScaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: _appBar(),
      body: _bodyWidget(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}
