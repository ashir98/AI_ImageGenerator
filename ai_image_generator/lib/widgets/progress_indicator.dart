import 'package:flutter/material.dart';

Widget progressIndicator(){

  return Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
            
                ),
                width: double.infinity,
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                        
                    Image.asset("assets/images/loading.gif",width: 250,),
                    Text("Waiting for the image to be generated...")
                        
                  ],
                ),
              );
}