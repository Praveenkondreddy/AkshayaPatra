import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(const MaterialApp(
  home: Akshaya(),
));


// ignore: camel_case_types
class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('My first app'),
      centerTitle: true,
    ),
    body: Row(
     children:const [],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Text('click'),  
      
    ),
  );
  }
  
}

class Akshaya extends StatelessWidget {
  const Akshaya({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bulb.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
         crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("OUR MISSION",
            style: TextStyle(fontSize: 20.0, color: Colors.blue),
            ),
            const SizedBox(height: 10.0,),
            const Text("No child in India shall be deprived of education because of hunger",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0,),
            ElevatedButton(
                  style: ButtonStyle(
                          backgroundColor:  MaterialStateProperty.all<Color>(Colors.blue),
                          padding: MaterialStateProperty.all<EdgeInsets>( const EdgeInsets.fromLTRB(40.0, 4.0, 40.0, 4.0)),
                  ),
                  onPressed: () { 
                    Navigator.push(  
                      context, MaterialPageRoute(builder: (context) => const OTP()),
                         );
                  },
                  child: const Text('Get Start',
                  style: TextStyle(color: Colors.white),),
                  
        ),
        const SizedBox(height: 20.0,), 

           
          ],
        ),
      ),
    );
  }
}

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: Colors.grey[100],
        
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             ClipRRect(
                borderRadius: BorderRadius.circular(80.0),
                
                child: const Image(image: AssetImage('images/akshaya.jpg'),
               height: 150,),
                  ),        
             const SizedBox(height: 40,), 
                     
            TextFormField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                      FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(8)),
                        
                        prefixIcon: const Icon(
                          Icons.outlined_flag_sharp,
                          color: Colors.green,
                          size: 32,
                        ),
                      
                        prefix: const Padding(
                          
                          padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                          child: Text(
                            '(+91) |',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                       

                      
                      ),
                    ),
                    
            const SizedBox(height: 40.0,),
            ElevatedButton(
                  style: ButtonStyle(
                          backgroundColor:  MaterialStateProperty.all<Color>(Colors.blue),
                          padding: MaterialStateProperty.all<EdgeInsets>( const EdgeInsets.fromLTRB(40.0, 4.0, 40.0, 4.0)),
                  ),
                  onPressed: () { 
                    Navigator.push(  
                      context, MaterialPageRoute(builder: (context) => const Verify()),
                         );
                  },
                  child: const Text('Request OTP',
                  style: TextStyle(color: Colors.white),),
                  
        ),
        const SizedBox(height: 40.0,), 

           
          ],
        ),
      ),
    );
  }
}

class Verify extends StatelessWidget {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
         constraints: const BoxConstraints.expand(),
         color: Colors.grey[100],
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Enter 4-digit",
            style: TextStyle(color:Color.fromARGB(255, 14, 136, 235),
            fontSize: 15,
            ),
            ),
            const Text("verification code",
            style: TextStyle(color:Color.fromARGB(255, 14, 136, 235),
            fontSize: 15,
            ),),
            const SizedBox(height: 10,),
            const Text("code send to +918489****",
            style: TextStyle(color:Colors.black,
            fontSize: 12,
            ),),
            const SizedBox(height: 20,),
            Form(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              
                children:  [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: TextFormField(
                    onSaved: (pin1){},
                    onChanged: (value) {
                      if (value.length ==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: TextFormField(
                    onSaved: (pin1){},
                    onChanged: (value) {
                      if (value.length ==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: TextFormField(
                    onSaved: (pin1){},
                    onChanged: (value) {
                      if (value.length ==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: TextFormField(
                    onSaved: (pin1){},
                    onChanged: (value) {
                      if (value.length ==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                
                  ],
              ),
            ),
               const SizedBox(height: 40.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 ElevatedButton(
                  
                  style: ButtonStyle(
                          backgroundColor:  MaterialStateProperty.all<Color>(Colors.blue),
                        
                          padding: MaterialStateProperty.all<EdgeInsets>( const EdgeInsets.fromLTRB(40.0, 4.0, 40.0, 4.0)),
                  ),
                  onPressed: () { 
                    Navigator.push(  
                      context, MaterialPageRoute(builder: (context) => const Akshaya()),
                         );
                  },
                  child: const Text('Submit OTP',
                  style: TextStyle(color: Colors.white),),
                  
        ),
              ],)   
           
          ]),
          
          
      ),

    );
  }
}



