import 'package:financialwalletapp/widgets/currency_card.dart';
import 'package:financialwalletapp/widgets/eclipse_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.8),
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    '\$5 194 392',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      EclipseButton(
                        text: 'Transfer',
                        backgroundColor: Color(0xFFF2B33A),
                        textColor: Color(0xFF181818),
                      ),
                      EclipseButton(
                        text: 'Request',
                        backgroundColor: Color(0xFF1F2123),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 17,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: ListView(
                    children: const [
                      CurrencyCard(
                        unit: 'Euro',
                        value: '6 428',
                        code: 'EUR',
                        icon: Icons.euro_sharp,
                      ),
                      CurrencyCard(
                        unit: 'Yenhwa',
                        value: '6 428',
                        code: 'YEN',
                        icon: Icons.currency_yen,
                        isInvert: true,
                        offsetY: -20,
                      ),
                      CurrencyCard(
                        unit: 'Bitcoin',
                        value: '6 428',
                        code: 'BTC',
                        icon: Icons.currency_bitcoin,
                        offsetY: -40,
                      ),
                      CurrencyCard(
                        unit: 'Rupee',
                        value: '6 428',
                        code: 'INR',
                        icon: Icons.currency_rupee_sharp,
                        isInvert: true,
                        offsetY: -60,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
