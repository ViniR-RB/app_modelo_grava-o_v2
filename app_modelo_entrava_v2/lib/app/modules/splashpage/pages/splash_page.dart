import 'package:app_modelo_entrava_v2/app/modules/splashpage/pages/splash1.dart';
import 'package:app_modelo_entrava_v2/app/modules/splashpage/pages/splash2.dart';
import 'package:app_modelo_entrava_v2/app/modules/splashpage/pages/splash3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body());
  }

  Widget body() {
    return Stack(
      children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          controller: _controller,
          children: const [
            Splash1(),
            Splash2(),
            Splash3(),
          ],
        ),
        Container(
          alignment: const Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: const Text('Skip',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onTap: () {
                  _controller.jumpToPage(2);
                },
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
              ),
              onLastPage
                  ? GestureDetector(
                      child: const Text('Done',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      onTap: () {
                        Modular.to.navigate('/home/');
                      },
                    )
                  : GestureDetector(
                      child: const Text(
                        'Next',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                    )
            ],
          ),
        ),
      ],
    );
  }
}
