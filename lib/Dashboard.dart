import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test/checkout.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<TileDetails> transactions = [
    TileDetails(
        id: "0xEdCc...341E",
        dateTime: "Mon Aug 16, 1:32 PM",
        send: true,
        amount: "++,+++.++"),
    TileDetails(
        id: "0xEdCc...341E",
        dateTime: "Mon Aug 16, 8:01 AM",
        send: false,
        amount: "12,345.67"),
    TileDetails(
        id: "0xEdCc...341E",
        dateTime: "Sun Aug 15, 4:43 PM",
        send: false,
        amount: "1,234.56"),
    TileDetails(
        id: "0xEdCc...341E",
        dateTime: "Tue Aug 14, 12:08 PM",
        send: false,
        amount: "123.45"),
    TileDetails(
        id: "0xEdCc...341E",
        dateTime: "Tue Aug 16, 9:56 AM",
        send: false,
        amount: "12.34")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    '+ Add Wallet',
                    style: TextStyle(color: Color(0xff6658EB), fontSize: 20),
                  ),
                ),
              ),
            ),
            CarouselSlider.builder(
              itemCount: 3,
              options: CarouselOptions(
                  height: 200,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  reverse: false,
                  autoPlay: false,
                  pageSnapping: true,
                  enlargeCenterPage: true),
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xff0D0E0F),
                    borderRadius: BorderRadius.circular(30)),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Checkout()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff6658EB)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0),
                              side: BorderSide(color: Color(0xff6658EB))))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Checkout',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  )),
            ),
            Expanded(
                child: Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.0),
                ),
              ),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Transactions',
                        style:
                            TextStyle(color: Color(0xff6658EB), fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'View All',
                          style:
                              TextStyle(color: Color(0xff6658EB), fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: ((context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Color(0xffF2F4F5),
                            )
                          ],
                        );
                      }),
                    ))
              ]),
            ))
          ],
        ),
      ),
    );
  }
}

class TileDetails {
  final String id, dateTime, amount;
  final bool send;
  TileDetails({
    required this.amount,
    required this.id,
    required this.dateTime,
    required this.send,
  });
}
