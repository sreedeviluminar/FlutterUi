import 'package:assignment_ui/tourism_gofast_app/screens/home_screen/gofast_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(MaterialApp(home :GofastLoginPage()));
}
class GofastLoginPage extends StatelessWidget {
  static String id = 'gofast_loginpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          children: [
            const Flexible(
              child: Center(
                child: Image(
                    width: 150,
                    image: NetworkImage(
                        'https://sun6-21.userapi.com/s/v1/if1/TCgsOMfvpRomS3-rHr2iJ-iJJ7vX_KGWqXuVC5Fwnc9OxFL1KtlfaHsxDBHB4JrFQzPMwdzd.jpg?size=2160x2160&quality=96&crop=25,0,2160,2160&ava=1')),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GofastHomeScreen(),
                      ));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff2d8ab5)),
                  shape: MaterialStateProperty.all<StadiumBorder>(
                    const StadiumBorder(
                      side: BorderSide.none,
                    ),
                  ),
                ),
                child: const Text(
                  'Login In',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                '- or -',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff2d8ab5)),
                  shape: MaterialStateProperty.all<StadiumBorder>(
                    const StadiumBorder(
                      side: BorderSide.none,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Loginin with Facebook',
                      style: TextStyle(fontSize: 14),
                    ),
                    Icon(Icons.facebook)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff58a3c3)),
                  shape: MaterialStateProperty.all<StadiumBorder>(
                    const StadiumBorder(
                      side: BorderSide.none,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Loginin with Twitter',
                      style: TextStyle(fontSize: 14),
                    ),
                    FaIcon(FontAwesomeIcons.twitter)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xffbb507a)),
                  shape: MaterialStateProperty.all<StadiumBorder>(
                    const StadiumBorder(
                      side: BorderSide.none,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Loginin with Google  ',
                      style: TextStyle(fontSize: 14),
                    ),
                    FaIcon(FontAwesomeIcons.google)
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
