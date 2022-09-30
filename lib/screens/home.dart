import 'dart:async';

import 'package:flutter/material.dart';
import 'package:noise_meter/noise_meter.dart';
import 'package:wddqawdqd/bottom_bar/bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isRecording = false;
  StreamSubscription<NoiseReading>? noiseSubscription;
  late NoiseMeter noiseMeter;


  //   @override
  // void initState() {
  //   super.initState();
  //   noiseMeter =  NoiseMeter(onError);
  // }

  // @override
  // void dispose() {
  //  noiseSubscription?.cancel();
  //   super.dispose();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Расталкиваем элементы по
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // Button
                  InkWell(
                    borderRadius: BorderRadius.circular(50 ) , // Закругляем границы
                    child: Padding(
                      padding: const EdgeInsets.all(10.0), // Делаем внутренний отступ,чтобы человеку было легче попасть по кнопке
                      child: Image.asset('assets/images/info.png'),
                    ),
                    onTap: (){
                      Navigator.of(context).pushNamed('/info');
                    },
                  ),

                InkWell(
                    borderRadius: BorderRadius.circular(50) , // Закругляем границы
                    child: Padding(
                      padding: const EdgeInsets.all(10.0), // Делаем внутренний отступ,чтобы человеку было легче попасть по кнопке
                      child: Image.asset('assets/images/settings.png'),
                    ),
                    onTap: (){
                      Navigator.of(context).pushNamed('/settings');
                    },
                  ),
   
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0), // left and right
              child: Column(
                children: [
                    Container(
                    width: MediaQuery.of(context).size.width,
                    height:150,
                    color: Colors.blue,
                  ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('43.1', style: TextStyle( fontSize: 80, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 19, 18, 18)),),
                    
                  Container( // Разделитель(вертикальная полоса)
                  height: 50,
                  width: 0.85,
                  color: const Color.fromARGB(255, 178, 173, 173),
                  ),  

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                      Text('Min 35.1', style: TextStyle(fontSize: 18, color: Colors.green),),
                      SizedBox(height: 6),
                      Text('Max 76.3', style: TextStyle(fontSize: 18, color: Colors.red),),

                      ],
                    )
                  ],
                 )
                ],
              ),
            ),

            const SizedBox() // Пустой бокс, чтобы элементы выравнялись
           
          ],
        ),
      ),

       bottomNavigationBar: const BottomBar(),
    );
  }
}