// import 'package:flutter/material.dart';

// class ExpansionTileSample extends StatelessWidget {
//   const ExpansionTileSample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Expansion tile'),
//         ),
//         body: GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
//             itemBuilder: (context, index) => Center(child: Text('hai')))

//         // ExpansionTile(
//         //   title: Text('title'),
//         //   subtitle: Text('Expand this title'),
//         //   children: [
//         //     ListTile(
//         //       leading: CircleAvatar(),
//         //       title: Text('blue'),
//         //     )
//         //   ],
//         // ),
//         );
//   }
// }

import 'package:flutter/material.dart';

class Contact {
  final String name;

  Contact(this.name);
}

class ExpansionTileSample extends StatefulWidget {
  static String id = 'ExpansionTile_Sample';
  @override
  _ExpansionTileSampleState createState() => _ExpansionTileSampleState();
}

class _ExpansionTileSampleState extends State<ExpansionTileSample> {
  final contacts = [
    Contact("sahar"),
    Contact("Joe"),
    Contact("fo"),
    Contact("Fifo"),
    Contact("Moshe"),
    Contact("sahar"),
    Contact("Joe"),
    Contact("fo"),
  ];

  var _displayAll = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("contacts"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: _gridContacts(),
      ),
    );
  }

  Widget _gridContacts() {
    final size = _displayAll ? contacts.length : 2;
    final contactsWidget =
        List.generate(size, (index) => _contactItem(contacts[index]))
          ..add(_seeNoSeeMore());
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 2 / 1,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: contactsWidget,
    );
  }

  Widget _contactItem(Contact item) {
    return Container(
      color: Colors.blue.withOpacity(0.5),
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.person),
          Text(item.name),
        ],
      ),
    );
  }

  Widget _seeNoSeeMore() {
    return InkWell(
      onTap: () => setState(() => _displayAll = !_displayAll),
      child: Container(
        color: Colors.blue.withOpacity(0.5),
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.person),
            Text(_displayAll ? "hide" : "Show all"),
          ],
        ),
      ),
    );
  }
}
