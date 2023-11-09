import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children:  [const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(title:Text("Rokya Amiro" ,),
              subtitle: Text("person"),
              leading: Image(image: AssetImage('images/1.png')) ),
        ),
          Expanded(
            child: Stack(
              children: [
                Container(width: 400.w,
                  height: 140.h,
                  decoration: const BoxDecoration(color:Color.fromARGB(225, 44, 43, 138),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30)) ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                       children: [const Text("Connections",style: TextStyle(color: Colors.white)),
                          SizedBox(width:MediaQuery.of(context).size.width/1.5),
                         Container(width: 50.w,height: 30.h,decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(30)),
                           child: const Center(child: Text("21 New",style: TextStyle(color: Colors.white))),)]),
                  ) ,),
                Expanded(
                  child: Container(
                       margin:  EdgeInsets.only(top: 110.h),
                    width:MediaQuery.of(context).size.width,
                    height: 150.h,
                    decoration: const BoxDecoration(color: Colors.teal,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(30),) ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          children: [const Text("Private Data",style: TextStyle(color: Colors.white)),
                             SizedBox(width:MediaQuery.of(context).size.width/1.5),
                            Container(width: 50.spMax,height: 30.h,decoration: BoxDecoration(color:const Color.fromARGB(225, 44, 43, 138),borderRadius: BorderRadius.circular(30)),
                              child:  const Center(child: Text("10 New",style: TextStyle(color: Colors.white))),)]),
                    ) ,),
                ),
                   Container(width: 480.w,height: 500.h,
                     margin: EdgeInsets.only(top:220.h ),
                     decoration:
                     const BoxDecoration(color:Colors.white,
                         borderRadius: BorderRadius.only(topRight:Radius.circular(30),
                             topLeft:  Radius.circular(30) )
                     ),
                child: Center(
                  child: Column(

                      children: [Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Your Photo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.sp),),
                      ),const Divider(height:2 ,endIndent: 50,indent: 50,),
                        Container(
                          margin: EdgeInsets.only(top: 30.h,left: 100.w),
                          child: Row(children: [Image.asset("images/2.jpg",width: 50.w,height: 50.h,),
                          SizedBox(width:MediaQuery.of(context).size.width/50 ,)  ,Image.asset("images/4.jpg",width: 50.w,height: 50.h,),
                            SizedBox(width: MediaQuery.of(context).size.width/50 ,),
                            Image.asset("images/5.jpg",width: 50.w,height: 50.h,)],),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.h,left: 100.w),
                          child: Row(children: [Image.asset("images/6.jpg",width: 50.w,height: 49.h,),
                            SizedBox(width:MediaQuery.of(context).size.width/50 ,)  ,Image.asset("images/7.jpg",width: 50.w,height: 50.h,),
                            SizedBox(width: MediaQuery.of(context).size.width/50 ,),
                            Image.asset("images/8.jpg",width: 50.w,height: 50.h,)],),
                        ),
                               SizedBox( height: MediaQuery.of(context).size.height/3,),
                        Row(
                          children: [
                            Card(
                              color: Color.fromARGB(225, 44, 43, 138),
                              margin: const EdgeInsets.only(top: 15, left: 20),

                              child: MaterialButton(
                                onPressed: () {

                                },
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(vertical: 15.h,horizontal: 80.w),
                                  child: const Text(
                                    "Add Connection",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 232, 225, 225), fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              color: Colors.teal,
                              margin: const EdgeInsets.only(top: 15, left: 10),

                              child: MaterialButton(
                                onPressed: () {

                                },
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(vertical: 15.h,horizontal: 30.w),
                                  child: const Text(
                                    "Edit",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 232, 225, 225), fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ]),
                ) ,   )


              ],
            ),
          ),
          ]),
      ),
    );
  }
}
