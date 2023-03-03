import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List sizes = ["Small", "Medium", "Large"];

  final List values = ["256x256","512x512","1024x1024"];

  String? curentVal;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AI Image Generator",
          style: TextStyle(
            
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          //text field, dropdown, generate buon column
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [

                //Texfield
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15),
                      hintText: "eg. 'Lion with a crown'",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Color(0xffbeace9))
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Color.fromARGB(255, 146, 100, 255))
                      )
                    ),
                  ),
                ),
                
                const SizedBox(height: 10,),
                Row(
                  children: [

                    ///Generate button
                    Expanded(
                      child: SizedBox(
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            
                          },
                          child: const Text(
                            "Generate"
                          ),
                          
                        ),
                      ),
                    ),

                    const SizedBox(width: 5,),


                    ///Dropdown button
                    Material(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      elevation: 1,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xFF242329)
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            style: const TextStyle(color: Color(0xffbeace9)),
                            hint: const Text("Select size", style: TextStyle(color:Color(0xffbeace9) ),),
                            value: curentVal,
                            items: List.generate(
                              sizes.length,
                              (index)=>DropdownMenuItem(
                                value: values[index],
                                child: Text(
                                  sizes[index],
                                  style: const TextStyle(color:Color(0xffbeace9)),
                                ),
                              )
                            ),
                    
                            onChanged: (value) {
                              setState(() {
                                curentVal = value.toString();
                              });
                            },
                    
                          ),
                        ),
                      ),
                    )
          
                  ],
                )
              ],
            ), 
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child:isLoading? Container(
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
              ):

              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
            
                ),
                width: double.infinity,
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                        
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("assets/images/ai.jpeg",width: 250,),
                    ),

                    SizedBox(height: 10,),

                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isLoading =!isLoading;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.download_for_offline_rounded),
                            Text("Download"),
                          ],
                        )
                      ),
                    )
                    
                        
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}