import 'package:flutter/material.dart';
import 'package:walletui/operators.dart';
import 'package:walletui/transactions.dart';
import 'package:walletui/widget/widgets.dart';

class Ui extends StatefulWidget {
  const Ui({Key? key}) : super(key: key);

  @override
  _UiState createState() => _UiState();
}

class _UiState extends State<Ui> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          child: Image(
            image: AssetImage("assets/wa_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.person))),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: Stack(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_alert_sharp),
                            color: Colors.grey,
                          ),
                          Positioned(
                            top: 10,
                            left: 21,
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                            ),
                          )
                        ],
                      )),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  "Hey Arslan,",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                subtitle: Text(
                  "Welcome Back",
                  style: style,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    children: [
                      Card(
                        color: Colors.blue,
                        balance: '12,00,000',
                        card: '4444 1111 8888 5555',
                        expiry: '01/21',
                      ),
                      Card(
                        color: Colors.orange,
                        balance: '10,00,000',
                        card: '4444 1111 8888 5555',
                        expiry: '01/20',
                      ),
                      Card(
                        color: Colors.green[300]!,
                        balance: '15,00,000',
                        card: '4444 1111 8888 5555',
                        expiry: '01/19',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Operators",
                      style: style,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow))
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Operators(
                        text: "Transfer",
                        image: imageWidget('wa_transfer.png', Colors.blue)),
                    Operators(
                        text: "Vouchers",
                        image: imageWidget('wa_voucher.png', Colors.orange)),
                    Operators(
                        text: "Top Up",
                        image: imageWidget('wa_ticket.png', Colors.blue)),
                    Operators(
                        text: "Bill Pay",
                        image:
                            imageWidget('wa_bill_pay.png', Colors.green[300]!)),
                    Operators(
                        text: "Rewards",
                        image: imageWidget('wa_transfer.png', Colors.blue)),
                    Operators(
                        text: "Shopping",
                        image: imageWidget('wa_voucher.png', Colors.orange)),
                    Operators(
                        text: "Tickets",
                        image: imageWidget('wa_ticket.png', Colors.blue)),
                    Operators(
                        text: "Budgets",
                        image:
                            imageWidget('wa_bill_pay.png', Colors.green[300]!)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transactions",
                      style: style,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow))
                  ],
                ),
              ),
              Transactions( 
                tcolor: Colors.green[300]! ,
                color: Colors.green[300]!.withOpacity(0.3),
                  image: imageWidget('wa_bill_pay.png', Colors.green[300]!),
                  listtext: "Send Money To",
                  subtext: "Today 5:30PM",
                  trailtext: "-\$20,000"),
              Transactions(
                tcolor: Colors.blue[300]!,
                color: Colors.blue[300]!.withOpacity(0.3),
                  image: imageWidget('wa_ticket.png', Colors.blue),
                  listtext: "Send Money To",
                  subtext: "Today 5:30PM",
                  trailtext: "\$30,000"),
              Transactions(
                tcolor: Colors.orange[300]!,
                color: Colors.orange[300]!.withOpacity(0.3),
                  image: imageWidget('wa_voucher.png', Colors.orange),
                  listtext: "Send Money To",
                  subtext: "Today 5:30PM",
                  trailtext: "\$50,000"),
            ],
          ),
        ),
      ],
    );
  }
}

// Widget Card() {
//   return Container(
//     height: 200,
//     width: 300,
//     decoration: ,
//   );
// }
class Card extends StatelessWidget {
  final String balance;
  final String card;
  final String expiry;
  final Color color;
  const Card({
    Key? key,
    required this.balance,
    required this.card,
    required this.expiry,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 180,
        width: 280,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image(
                  image: AssetImage("assets/wa_visa.png"),
                  width: 55,
                  height: 55,
                  color: Colors.white,
                ),
              ),
              Text(
                "Balance",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "\$$balance",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    card,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    expiry,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
