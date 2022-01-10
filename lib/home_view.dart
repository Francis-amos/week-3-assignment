import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomeView extends StatelessWidget {
const HomeView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade400,
      appBar: AppBar(
        leading: const Center(
          child: (CircleAvatar(
            backgroundImage: AssetImage('images/user.png'),
          )),
        ),
        title: const Text(
          'My Tasks',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
          ),
        ),
        actions: const [
          Icon(Icons.more_vert),
          Icon(Icons.search),
          SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children:[
                  const Icon(
                    Icons.check_circle_outline, 
                    size: 30,
                    color:Colors.pinkAccent,
                    ),
                    const SizedBox(width:10.0),
               Expanded(
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:[
                     const Text(
                       'Plan a trip to FinLand',
                       style:TextStyle(
                          fontSize: 20,
                          color:Color.fromRGBO(37, 43, 103, 1),
                          fontWeight:FontWeight.bold,
                       ),
                       ),
                     Text(
                       "The family's trip to Finland next summer",
                        maxLines:2,
                        overflow:TextOverflow.ellipsis,
                       style:TextStyle(
                          fontSize: 16,
                          color:Colors.grey.shade700,
                       ),
                    
                       ),
                   ],
                 ),
               ),
                  const SizedBox(width:10.0),
               Row(
                 children: const [
                   Icon(
                     Icons.notifications,
                     color:Colors.pinkAccent,
                     ),
                   Text(
                     "Yesterday",
                     style: TextStyle(
                       color:Colors.pinkAccent,
                     ),
                     ),
                 ],
               ),
                ],
          
              ),
            ),
          );
           }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: const Color.fromRGBO(37, 43, 103, 1),
      ),
      bottomNavigationBar: Container(
        padding:const EdgeInsets.all(15),
        margin:const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color:const Color.fromRGBO(37, 47, 103, 1),
           borderRadius: BorderRadius.circular(15.0),
        ),
        child:Row(
          children:const[
            Icon(
              Icons.check_circle_rounded,
              size:30,
              color:Colors.white,
              ),
              SizedBox(width:15.0),
              Text(
                'Completed',
                style:TextStyle(
                  fontSize:20,
                  color:Colors.white,
                  fontWeight:FontWeight.bold,
                ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color:Colors.white,
                  size:30,
                  ),
                  Spacer(),
                  Text(
                    '30',
                    style:TextStyle(
                      fontSize:18,
                      color:Colors.white,
                      fontWeight:FontWeight.bold,
                    ),
                    ),
          ],
        ),
      ),
    );
  }
}
