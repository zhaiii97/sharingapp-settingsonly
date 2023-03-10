import 'package:flutter/material.dart';
import '../../components/linear_progress_indicator_widget.dart';
import '../../components/progress_widget.dart';
import '../../constants.dart';

class ReceivePage extends StatelessWidget {
  const ReceivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: kDefaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/dinosaur.png',
                  width: 55,
                  height: 55,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Mon',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Receiver',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ]),
                const SizedBox(
                  width: kDefaultPadding * 2,
                ),
                Image.asset(
                  'assets/icons/reuse.png',
                  width: 35,
                  height: 35,
                ),
                const SizedBox(
                  width: kDefaultPadding * 2,
                ),
                Image.asset(
                  'assets/icons/leo.png',
                  width: 55,
                  height: 55,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Robert',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Sender',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ]),
              ],
            ),
            const SizedBox(
              height: kDefaultPadding * 3,
            ),
            const LinearProgressIndicatorWidget(),
            const SizedBox(
              height: kDefaultPadding * 3,
            ),
            const ProgressWidget(),
            const SizedBox(
              height: kDefaultPadding * 3,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: kDefaultPadding),
                child: Text(
                  'Transfer',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.wifi,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: kDefaultPadding * 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Wifi',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Transfer via wifi',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.bluetooth,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: kDefaultPadding * 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Bluetooth',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Transfer via bluetooth',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.nfc,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: kDefaultPadding * 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'NFC',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Transfer via NFC',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.qr_code,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: kDefaultPadding * 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'QR Code',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Transfer via QR Code',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
           
            const SizedBox(
              height: kDefaultPadding * 7,
            ),
          ],
        ),
      ),
    );
  }
}
