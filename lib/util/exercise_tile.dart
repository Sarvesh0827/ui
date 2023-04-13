import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final String numberOFExercises;
  final color;
  const ExerciseTile({Key? key, this.icon, required this.exerciseName, required this.numberOFExercises, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),

        ),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius:BorderRadius.circular(6),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: color,
                    child: Icon(icon,
                      color: Colors.white,),
                  ),
                ),
                SizedBox(width: 12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    Text(exerciseName,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,

                      ),),
                    SizedBox(height: 5,),

                    //subtitle
                    Text( numberOFExercises.toString()+ "exercises"),

                  ],
                ),

              ],

            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
