import 'package:flutter/material.dart';

class PaymentRequest extends StatefulWidget {
  final amount;
  const PaymentRequest({Key? key, required this.amount}) : super(key: key);

  @override
  State<PaymentRequest> createState() => _PaymentRequestState();
}

class _PaymentRequestState extends State<PaymentRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffa2a5c0),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.28,
            color: const Color(0xffa2a5c0),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 48),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      const SizedBox(height: 80),
                      const Text(
                        'Merchant Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              '\$',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            widget.amount.toString(),
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        color: const Color(0xff6658eb),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset('assets/images/qr.png')),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                              child: Text(
                                'SCAN & PAY',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Image.asset('assets/images/xWalletLogo.png'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xff6658eb)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0),
                                ))),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.white,
                    ),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'assets/images/person.jpg',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
