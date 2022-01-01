import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class FreeContacts extends StatefulWidget {
  const FreeContacts({Key? key}) : super(key: key);

  @override
  _FreeContactsState createState() => _FreeContactsState();
}

class _FreeContactsState extends State<FreeContacts> {
  late Iterable<Contact>? _contacts =[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getContacts().whenComplete(() {
      setState(() {});
    });
    // readContacts();
  }

  Future<void> getContacts() async {
    //Make sure we already have permissions for contacts when we get to this
    //page, so we can just retrieve it
    final Iterable<Contact> contacts = await ContactsService.getContacts();
    setState(() {
      _contacts = contacts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "مخاطبین مجاز",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Sans"),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(children: [
              Icon(Icons.search),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.refresh)
            ]),
          )
        ],
      ),
      body: _contacts != null
          ? ListView.builder(
              itemCount: _contacts?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                Contact? contact = _contacts?.elementAt(index);
                return ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 18),
                  leading:
                      (contact!.avatar != null && contact.avatar!.isNotEmpty)
                          ? CircleAvatar(
                              backgroundImage: MemoryImage(contact.avatar!),
                            )
                          : CircleAvatar(
                              child: Text(contact.initials()),
                              backgroundColor: Colors.blueGrey[700], //Theme.of(context).accentColor,
                            ),
                  title: Text(contact.displayName ?? ''),
                  subtitle: Text(
                      '${contact.phones!.isNotEmpty ? contact.phones!.elementAt(0).value : '(none)'}'),
                  //This can be further expanded to showing contacts detail
                  // onPressed().
                );
              },
            )
          : Center(child: const CircularProgressIndicator()),
    );
  }
}
