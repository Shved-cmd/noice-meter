import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wddqawdqd/main.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Логика для кнопки: если мы переходим допустим в list,то нам нужно,чтобы кнопка,на которую мы нажали стала серой, а кнопка голоса прозрачной

    String? thisRoute() => ModalRoute.of(context)?.settings.name;
    
    ActiveButtonColor(String route) {
        if(route == thisRoute()) {
          return Color.fromARGB(26, 59, 56, 56);
        } 
          return Colors.transparent;
        
    }

    // var itRoute = ModalRoute.of(context)?.settings.name; //проверяем,на каком маршруте мы находимся

    // ifActiveSaveButton() {
    //     if(itRoute == '/saves') {
    //       return const Color.fromARGB(255, 227, 224, 224);
    //     } 
    //     return Colors.transparent;
    // }

    // ifActiveMicButton() {
    //     if(itRoute == '/') {
    //       return const Color.fromARGB(255, 227, 224, 224);
    //     } 
    //     return Colors.transparent;
      
    // }


    return Row(
              children: [
                // Кнопка-сохранить
                 Material(
                      borderRadius:const BorderRadius.vertical(top: Radius.circular(18)),
                   child: InkWell(
                      borderRadius:const BorderRadius.vertical(top: Radius.circular(18)),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 4, //    
                          height: 75,
                        child: Image.asset('assets/images/save.png'),
                      ),
                      onTap: (){
                      },
                    ),
                 ),

                // Кнопка-микрофон

                  Material(
                    color: ActiveButtonColor(AllRoutes.home),
                      borderRadius:const BorderRadius.vertical(top: Radius.circular(18)),
                    child: InkWell(
                      borderRadius:const BorderRadius.vertical(top: Radius.circular(18)),
                           
                           child: SizedBox(
                            
                             width: MediaQuery.of(context).size.width / 4, //  
                               height: 75,
                             child: Image.asset('assets/images/mic-2.png'),
                           ),
                           onTap: () async { // Добавляем ассинхронность,чтобы одновременно при переходе на главную страницу вылезал запрос на использование микрофона
                            // Условие, чтобы при нажати несколько раз на одну кнопку не создавались новые страницы  

                            if (thisRoute() != '/') {

                            Navigator.of(context).pushNamed('/');
                            }


                          // При нажатии на главную страницу - будет запрос 
                          //Permission.microphone.status.isDenied-если статус микрофона:"Выключен"-то делаем запрос:
                            if (thisRoute() == '/' && await Permission.microphone.status.isDenied)  {
                          
                            await Permission.microphone.request(); // Запрос на использование микрофона 

                            } else {
                              print(await Permission.microphone.status); // Проверяем статус микрофона в консоли
                            }

                           },
                         ),
                  ),

                // Кнопка-СОХРАНЕННЫЕ ФАЙЛЫ

                 Material(
                    color: ActiveButtonColor(AllRoutes.saves) ,
                      borderRadius:const BorderRadius.vertical(top: Radius.circular(18)),
                      child: InkWell(
                        borderRadius:const BorderRadius.vertical(top: Radius.circular(18)),
                         child: SizedBox(
                           width: MediaQuery.of(context).size.width / 4, //  
                             height: 75,
                           child: Image.asset('assets/images/list.png'),
                         ),
                         onTap: (){
                            // Условие, чтобы при нажати несколько раз на одну кнопку не создавались новые страницы  

                          if (thisRoute() != '/saves') {

                          Navigator.of(context).pushNamed('/saves');
                          }
                         },
                       ),
                 ),

                // Кнопка-таймер

                  Material(
                      borderRadius:const BorderRadius.vertical(top: Radius.circular(18)),
                    child: InkWell(
                        borderRadius:const BorderRadius.vertical(top: Radius.circular(18)), 
                      child: SizedBox(
                         width: MediaQuery.of(context).size.width / 4, //  
                         height: 75,
                        child: Image.asset('assets/images/timer.png'),
                      ),
                      onTap: (){},
                    ),
                  ),

        
        
              ],
            );
  }
}




