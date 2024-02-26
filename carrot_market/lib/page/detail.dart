import 'package:flutter/material.dart';

class DetailContentView extends StatefulWidget {
  final Map<String, String> data;
  const DetailContentView({super.key, required this.data});

  @override
  State<DetailContentView> createState() => _DetailContentViewState();
}

class _DetailContentViewState extends State<DetailContentView> {
  late int size;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    size = MediaQuery.of(context).size.width.toInt();
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more),
        ),
      ],
    );
  }

  Widget _bodyWidget() {
    return Container(
      child: Hero(
        tag: widget.data["cid"]!,
        child: Image.asset(
          widget.data["image"]!,
          fit: BoxFit.fill,
          width: size.toDouble(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _appBar(),
      body: _bodyWidget(),
    );
  }
}
