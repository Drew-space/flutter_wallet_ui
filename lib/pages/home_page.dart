import 'package:app_ui/utils/action_button.dart';
import 'package:app_ui/utils/balance_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // page controller for cards
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            // top appbar
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Cards", style: TextStyle(fontSize: 26)),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // cards
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  BalanceCard(
                    balance: 10250.20,
                    cardNumber: 1234567812345678,
                    expiryMonth: 12,
                    expiryYear: 2024,
                    color: Colors.deepPurple[300]!,
                  ),
                  BalanceCard(
                    balance: 1250.75,
                    cardNumber: 8765432187654321,
                    expiryMonth: 6,
                    expiryYear: 2025,
                    color: Colors.blue[300]!,
                  ),
                  BalanceCard(
                    balance: 2500.00,
                    cardNumber: 1111222233334444,
                    expiryMonth: 9,
                    expiryYear: 2026,
                    color: Colors.green[300]!,
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
            ),

            SizedBox(height: 25),

            //  3 buttons (send, pay, bills )
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(
                    iconImagePath: "lib/icons/send.png",
                    buttonText: "Send",
                  ),
                  ActionButton(
                    iconImagePath: "lib/icons/atm-card.png",
                    buttonText: "Pay",
                  ),
                  ActionButton(
                    iconImagePath: "lib/icons/bill.png",
                    buttonText: "Bills",
                  ),
                  //  send button

                  // pay button

                  // bills button
                ],
              ),
            ),

            // 2 columbs (stats , transactions )
          ],
        ),
      ),
    );
  }
}
