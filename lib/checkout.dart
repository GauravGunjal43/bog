import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(color: Color(0xff6658eb)),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xff6658eb)),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
              child: Container(
                height: 184,
                width: 327,
                decoration: BoxDecoration(
                  color: const Color(0xff0D0E0f),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          children: [
                            const Text(
                              'My Wallet',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Image.asset('assets/images/settings.png')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Image.asset('assets/images/cart.png'),
                            const Text(
                              ' Merchant Wallet',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                            const Spacer(),
                            const Text(
                              '0xEDCC...341E',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Balance',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              '\$',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Text(
                            ' 12.34',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'USD',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Color(0xff6658eb),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0),
                          ))),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Checkout',
                            style: TextStyle(
                                color: Color(0xff6658eb), fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}