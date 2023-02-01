import 'package:flutter/material.dart';
import 'package:test/paymentRequest.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  List tile = [1, 2, 3, 4, 5, 6, 7, 8, 9, '.', 0, ''];
  String amount = '';

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
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xff6658eb)),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
              child: Container(
                height: 200,
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
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              '\$',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Text(
                            amount,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                      ),
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        if (index != 11) {
                          return GestureDetector(
                            onTap: () {
                              amount += tile[index].toString();
                              setState(() {});
                            },
                            behavior: HitTestBehavior.translucent,
                            child: Center(
                                child: Text(
                              tile[index].toString(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 24),
                            )),
                          );
                        } else {
                          return IconButton(
                            onPressed: () {
                              if (amount.length > 0) {
                                amount = amount.substring(0, amount.length - 1);
                                setState(() {});
                              }
                            },
                            icon: Icon(Icons.backspace_outlined),
                            color: Colors.white,
                          );
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentRequest(amount: amount)));
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
