import 'package:airbnb/presentation/widgets/host_details_sheet.dart';
import 'package:flutter/material.dart';
import 'host_card_painter.dart';

class CabinImageStack extends StatefulWidget {
  final String cabinImg;
  final String hostImg;
  final String hostName;
  final String years;
  const CabinImageStack(
      {super.key,
      required this.cabinImg,
      required this.hostImg,
      required this.hostName,
      required this.years});

  @override
  State<CabinImageStack> createState() => _CabinImageStackState();
}

class _CabinImageStackState extends State<CabinImageStack>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _onButtonPressed() {
    _controller.forward();
    hostdetailsSheet(
        context, widget.hostImg, widget.hostName, widget.years, _controller);
  }

  @override
  Widget build(BuildContext context) {
    final deviceW = MediaQuery.of(context).size.width;
    final deviceH = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          height: deviceH / 2.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                14.5,
              ),
              image: DecorationImage(
                  image: AssetImage(widget.cabinImg), fit: BoxFit.cover)),
        ),
        Positioned(
            right: 15,
            top: 14,
            child: Image.asset(
              "assets/images/heart.png",
              scale: 1.5,
            )),
        Positioned(
            right: 0,
            left: 0,
            bottom: -8,
            child: Image.asset(
              "assets/images/ellipses.png",
              scale: 2,
            )),
        Positioned(
            left: 17,
            bottom: 18,
            child: SizedBox(
              height: deviceH / 8.5,
              width: deviceH / 8.7,
              child: Stack(
                children: [
                  FittedBox(
                    fit: BoxFit.contain,
                    child: CustomPaint(
                      size: Size(deviceW, (deviceW * 1.1).toDouble()),
                      painter: HostCardPainter(),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 5,
                    right: 15,
                    child: GestureDetector(
                      onTap: () => _onButtonPressed(),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 21),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 0.25)),
                          image: DecorationImage(
                              image: AssetImage(
                                widget.hostImg,
                              ),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
