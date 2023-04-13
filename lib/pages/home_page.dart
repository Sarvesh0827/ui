import 'package:dribble_design/util/emoticon_face.dart';
import 'package:dribble_design/util/exercise_tile.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.message),
          label: "",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.contact_mail_outlined),
          label: "",
        ),



      ]),
      body: SafeArea(
        child: Column(
          children: [
            //greetings row
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Hi Jared
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, Sarvesh!",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,

                          ),),
                          SizedBox(height: 8),

                          Text("12 Apr, 2023",style: TextStyle(
                            color: Colors.blue[200],
                          ),
                          ),

                        ],
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                          padding: EdgeInsets.all(12),
                          child: Icon(Icons.notifications,color: Colors.white,)
                      )



                      //Notification
                    ],
                  ),
                  SizedBox(height: 25),
                  // Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.search,
                        color: Colors.white,
                        ),
                        SizedBox(width:5),
                        Text("Search",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,

                        ),),

                      ],
                    ),


                  ),
                  SizedBox(height: 25,),

                  //how do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,

                        ),),
                      Icon(Icons.more_horiz,
                      color: Colors.white,),
                    ],
                  ),
                  SizedBox(height: 25,),

                  //4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                    //bad
                    Column(
                      children: [
                       EmoticonFace(emoticanFace: "🥲"),
                        SizedBox(height: 10),
                        Text("Sad",
                        style: TextStyle(color: Colors.white,
                        ),),
                      ],
                    ),

                    // SizedBox(width: 30,),
                    //fine
                    Column(

                      children: [
                        EmoticonFace(emoticanFace: '😀'),
                        SizedBox(height: 10),
                        Text("Fine",
                            style: TextStyle(color: Colors.white,
                            )),
                      ],
                    ),
                    // SizedBox(width: 30,),
                    //well
                    Column(
                      children: [
                        EmoticonFace(emoticanFace: "😃"),
                        SizedBox(height: 10),
                        Text("Well",
                            style: TextStyle(color: Colors.white,
                            )),
                      ],
                    ),

                    // SizedBox(width: 30,),


                    //excellent
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        EmoticonFace(emoticanFace: "😁"),
                        SizedBox(height: 10),
                        Text("Excellent",
                            style: TextStyle(color: Colors.white,
                            )),
                      ],
                    ),



                  ],),
                  SizedBox(height: 25,),
                ],
              ),
            ),

            Expanded(
              child: ClipRect(
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        //exercise heading

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("Exercises",style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold,

                          ),),
                          Icon(Icons.more_horiz),
                        ],

                        ),
                        SizedBox(height: 15,),
                        //list view of exercises
                        Expanded(
                          child: ListView(
                            children: [
                              ExerciseTile(
                                exerciseName: "Speaking skill",
                                numberOFExercises: "16",
                                icon:Icons.favorite,
                                color: Colors.deepOrangeAccent,
                              ),
                              ExerciseTile(
                                exerciseName: "Reading speed",
                                numberOFExercises: "8",
                                icon:Icons.contact_page,
                                color: Colors.blue,
                              ),
                              ExerciseTile(
                                exerciseName: "Writing skill",
                                numberOFExercises: "21",
                                icon:Icons.star,
                                color: Colors.pink,
                              ),

                              ExerciseTile(
                                exerciseName: "Writing skill",
                                numberOFExercises: "21",
                                icon:Icons.message,
                                color: Colors.green,
                              ),

                              ExerciseTile(
                                exerciseName: "Writing skill",
                                numberOFExercises: "21",
                                icon:Icons.star,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
