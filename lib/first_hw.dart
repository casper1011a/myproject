import 'package:flutter/material.dart';
import 'package:flutter_application_2/mymain.dart';

class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        // appBar: AppBar(
        //   title: Text("data"),
        //   actions: [
        //     Icon(Icons.search)
        //   ],
        // ),
        
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 200.0,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
              
                child: Column(
                  children: [
                    
                    Center(
                      child: Container(
                        // color: Colors.amberAccent,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),),
                        child: Image(
                          
                          image: NetworkImage("https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
                        ),
                        height: 100.0,
                        width: 100.0,),
                      ),
                    ),
                    Text(
                      "sjdisdjis",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              color: Colors.orange,
              height: 10.0,
            ),
            SizedBox(
              height: 10.0,

            ),
            Column(
              children: [
                Container(
                  height: 60.0,
                  color: Colors.pinkAccent,
                  child: Row(
                    // mainAxisAlignment:MainAxisAlignment.center ,
                    children: [
                      IconButton(onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => mymain(),));
                      }, icon: Icon(Icons.home)),
                      SizedBox(
                        width:200.0,
                      ),
                      Text("data",
                      style: TextStyle(
                        fontSize: 30.0,
                        
                      ),
                      ),
                      SizedBox(
                        width: 200.0,
                      ),
                       Icon(Icons.arrow_back,),
                      
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.pinkAccent,
                  child: Row(
                    // mainAxisAlignment:MainAxisAlignment.center ,
                    children: [
                      Icon(Icons.home),
                      SizedBox(
                        width:200.0,
                      ),
                      Text("data",
                      style: TextStyle(
                        fontSize: 30.0,
                        
                      ),
                      ),
                      SizedBox(
                        width: 200.0,
                      ),
                       Icon(Icons.arrow_back,),
                      
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.pinkAccent,
                  child: Row(
                    // mainAxisAlignment:MainAxisAlignment.center ,
                    children: [
                      Icon(Icons.home),
                      SizedBox(
                        width:200.0,
                      ),
                      Text("data",
                      style: TextStyle(
                        fontSize: 30.0,
                        
                      ),
                      ),
                      SizedBox(
                        width: 200.0,
                      ),
                       Icon(Icons.arrow_back,),
                      
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.pinkAccent,
                  child: Row(
                    // mainAxisAlignment:MainAxisAlignment.center ,
                    children: [
                      Icon(Icons.home),
                      SizedBox(
                        width:200.0,
                      ),
                      Text("data",
                      style: TextStyle(
                        fontSize: 30.0,
                        
                      ),
                      ),
                      SizedBox(
                        width: 200.0,
                      ),
                       Icon(Icons.arrow_back,),
                      
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.pinkAccent,
                  child: Row(
                    // mainAxisAlignment:MainAxisAlignment.center ,
                    children: [
                      Icon(Icons.home),
                      SizedBox(
                        width:200.0,
                      ),
                      Text("data",
                      style: TextStyle(
                        fontSize: 30.0,
                        
                      ),
                      ),
                      SizedBox(
                        width: 200.0,
                      ),
                       Icon(Icons.arrow_back,),
                      
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.pinkAccent,
                  child: Row(
                    // mainAxisAlignment:MainAxisAlignment.center ,
                    children: [
                      Icon(Icons.home),
                      SizedBox(
                        width:200.0,
                      ),
                      Text("data",
                      style: TextStyle(
                        fontSize: 30.0,
                        
                      ),
                      ),
                      SizedBox(
                        width: 200.0,
                      ),
                       Icon(Icons.arrow_back,),
                      
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.pinkAccent,
                  child: Row(
                    // mainAxisAlignment:MainAxisAlignment.center ,
                    children: [
                      Icon(Icons.home),
                      SizedBox(
                        width:200.0,
                      ),
                      Text("data",
                      style: TextStyle(
                        fontSize: 30.0,
                        
                      ),
                      ),
                      SizedBox(
                        width: 200.0,
                      ),
                       Icon(Icons.arrow_back,),
                      
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            )
          ],
        ),
        
      ),
    );
  }
}