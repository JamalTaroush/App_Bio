import 'package:bio_app/extensions/context_extension.dart';
import 'package:bio_app/widgets/bio_card.dart';
import 'package:bio_app/widgets/bio_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('BIO'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        // shadowColor: Colors.transparent,
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
              Colors.pink.shade300,
              Colors.blue.shade100,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Jamal Taroush',
              style: GoogleFonts.cairo(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flutter Course',
              style: GoogleFonts.cairo(
                color: Colors.red,
                height: 1,
              ),
            ),
            Divider(
              thickness: 2,
              indent: 30,
              endIndent: 30,
            ),
            BioCard(
              leadingIcon: Icons.email,
              title: 'Email',
              subTitle: 'email@app.com',
              trailingIcon: Icons.send,
              marginBottom: 10,
              onPressed: () {
                print('Send Email');
                context.showSnackBar(message: 'Send Email',error: false);
              },
            ),
            // SizedBox(height: 10),
            BioCard(
              leadingIcon: Icons.phone,
              title: 'phone',
              subTitle: '0599618765',
              trailingIcon: Icons.call,
              marginBottom: 10,
              onPressed: () {
                print('Call Phone');

              context.showSnackBar(message: 'call Phone',error: false);
              },

            ),
            BioContainer(
                leadingIcon: Icons.phone_android,
                title: 'Phone 2',
                subTitle: '0591234567',
                trailingIcon: Icons.call,
                onPressed: () {
                  print('Phone 02');
                  context.showSnackBar(message: 'call Phone 2',error: false);

                }),
                  Spacer(),
                  Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text('JAMAL TAROUSH - 2022')),
            // SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }


}
