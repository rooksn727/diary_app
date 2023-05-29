import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String? _dropdownText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //appbar is the nav bar basically
        backgroundColor: Colors.grey.shade100,
        toolbarHeight: 100,
        elevation: 4,
        title: Row(children: [
          Text(
            'Diary', 
            style: TextStyle(fontSize: 39, color: Colors.blueGrey.shade400),
          ),
          Text(
            'Book', 
            style: TextStyle(fontSize: 39, color: Colors.green.shade400),
          )
        ],
        ),
        actions: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>( //actual dropdown 
                items: <String>['Latest', 'Earliest'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(color: Colors.grey),));
              }).toList(), 
              hint: (_dropdownText == null) ? Text('Select') : Text(_dropdownText!), //shows what is displayed initially 
              onChanged: (value) { //changes state depending on which one selected
                if (value == 'Latest'){
                  setState(() {
                    _dropdownText = value;
                  });
                }
                else if (value == 'Earliest'){
                  setState(() {
                    _dropdownText = value;
                  });
                }
              }, //since it is not null then it will display
              ),
            ),
            /*for login icon
            Putting the log in circle in a row and then a column so we can have the name of the account below
            Inkwell is so that user is able to click and open a pop up from the icon
            */
            Container( 
              child: Row(
                children: [
                  Column(
                    children: [
                        Expanded(child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://picsum.photos/200/300'),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        )),
                        Text('Nicholas', style: TextStyle(
                          color: Colors.blue
                        ),)
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.logout_outlined, size: 19, color: Colors.red,))
                ],
              ),
            ) 
          ],
          )
        ],
      ),
    );
  }
}
