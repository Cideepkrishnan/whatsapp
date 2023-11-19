import 'package:flutter/material.dart';
import 'package:whatsapp/utils/database/database.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        actions: [Icon(Icons.search)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                ),
                title: Text("Cideep"),
                subtitle: Text("in the end you only have yourself"),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: database.settings.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => screns.screen[index],
                        ));
                  },
                  child: ListTile(
                    leading: database.settings[index]["icon"],
                    title: Text(database.settings[index]["title"]),
                    subtitle: Text(database.settings[index]["subtitle"]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}