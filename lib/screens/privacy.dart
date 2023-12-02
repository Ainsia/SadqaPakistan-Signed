import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_cart/flutter_cart.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sadqapak/models/cart_check.dart';
import 'package:sadqapak/screens/checkout_screen.dart';
import 'package:sadqapak/screens/jazakAllah_screen.dart';
import 'package:sadqapak/utils/routes.dart';
import 'package:sadqapak/utils/service_locator.dart';
import 'package:sadqapak/widgets/payment_method_widget.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_detail_model.dart';
import '../providers/cart.dart';
import '../services/navigation_service.dart';
import 'PaypalPayment.dart';

class Privacy extends StatefulWidget {
  @override
  State<Privacy> createState() => _Privacy();
}

class _Privacy extends State<Privacy> {

  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          bottomOpacity: 0,
          title: Text(
            "Privacy Policy",
            style: TextStyle(
                color: Colors.black,
                fontSize: width * 0.04,
                fontWeight: FontWeight.w700),
          ),
          /*actions: [
            IconButton(
                onPressed: () {
                },
                icon: Image.asset(
                  "assets/images/humburger.png",
                  height: height * 0.05,
                ))
          ],*/
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: width * 0.04,
              ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Taraqqi Enterprise (NTN 4200004760245) operates the http://SadqaPakistan.pk website, which provides the SERVICE. This page is used to inform website visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service, the Sadqa Pakistan website. If you choose to use our Service, then you agree to the collection and use of information in relation with this policy. The Personal Information that we collect are used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy. Information Collection and Use For a better experience while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to your name, phone number, and postal address. The information that we collect will be used to contact or identify you. Log Data We want to inform you that whenever you visit our Service, we collect information that your browser sends to us that is called Log Data. This Log Data may include information such as your computer’s Internet Protocol ("IP") address, browser version, pages of our Service that you visit, the time and date of your visit, the time spent on those pages, and other statistics. Cookies Cookies are files with small amount of data that is commonly used an anonymous unique identifier. These are sent to your browser from the website that you visit and are stored on your computer’s hard drive. Our website uses these "cookies" to collection information and to improve our Service. You have the option to either accept or refuse these cookies, and know when a cookie is being sent to your computer. If you choose to refuse our cookies, you may not be able to use some portions of our Service. Service Providers We may employ third-party companies and individuals due to the following reasons: • To facilitate our Service; • To provide the Service on our behalf; • To perform Service-related services; or • To assist us in analyzing how our Service is used. We want to inform our Service users that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose. Security We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security. Links to Other Sites Our Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over, and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services. Changes to This Privacy Policy We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page. Contact Us If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
