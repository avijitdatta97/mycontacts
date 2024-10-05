import 'package:flutter/material.dart';
import 'package:mycontacts/presentation/utility/add_contact_type_model.dart';

class AddNewContact extends StatefulWidget {
  const AddNewContact({super.key});

  @override
  State<AddNewContact> createState() => _AddNewContactState();
}

class _AddNewContactState extends State<AddNewContact> {

  final List<Color> _gridColor = [const Color(0xFFD3FCDF), const Color(0xFFD6E7FE), const Color(0xFFE7E1FF)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: addContactTypeItem.length,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return _buildContactAddTypeItem(index);
          },
        ),
      ),
    );
  }

  Widget _buildContactAddTypeItem(int index) {
    return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: _gridColor[index],
            ),
            margin: const EdgeInsets.all(10),
            height: 100,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  addContactTypeItem[index].iconData,
                  size: 50,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(addContactTypeItem[index].title)
              ],
            ),
          );
  }
}
