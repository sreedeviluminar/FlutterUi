import 'package:assignment_ui/tourism_gofast_app/screens/details_screen/widgets/top_row.dart';
import 'package:flutter/material.dart';

class GofastDetaisScreen extends StatelessWidget {
  const GofastDetaisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopRow(),
              const SizedBox(height: 20),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'About Places',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.'),
              ),
              const SizedBox(height: 25),
              const Text(
                'Special Facilities',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FacilityTile(
                      icon: Icons.local_parking,
                      text: "Free Parking",
                    ),
                    FacilityTile(
                      icon: Icons.support_agent,
                      text: "24 h support",
                    ),
                    FacilityTile(
                      icon: Icons.wifi,
                      text: "Free Wifi",
                    )
                  ]),
              const SizedBox(height: 25),
              Container(
                height: MediaQuery.of(context).size.height * .25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/2034335/pexels-photo-2034335.jpeg?auto=compress&cs=tinysrgb&w=400'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(height: 25),
              const Text(
                'Our Packages',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PackagesContainer(),
                  PackagesContainer(),
                  PackagesContainer(),
                  PackagesContainer(),
                ],
              ),
              Spacer(),
              SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.lightBlue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide.none,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('\$860',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text(
                            'Boolking',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class PackagesContainer extends StatelessWidget {
  const PackagesContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: const [
            Text(
              'Adult',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            Divider(
              color: Colors.black38,
            ),
            Text(
              '02',
              style: TextStyle(fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}

class FacilityTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const FacilityTile({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: Colors.lightBlue,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
