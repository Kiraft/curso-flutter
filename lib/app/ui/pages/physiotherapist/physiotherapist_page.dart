import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/controllers/physiotherapist_controller.dart';
import 'package:flutter_application_1/app/ui/pages/globalwidgets/navbar.dart';
import 'package:flutter_application_1/app/ui/pages/physiotherapist/widgets/bar_text_child.dart';
import 'package:flutter_application_1/app/ui/pages/physiotherapist/widgets/buttom_agendar.dart';
import 'package:flutter_application_1/app/ui/pages/physiotherapist/widgets/row_text.dart';
import 'package:flutter_application_1/app/ui/utiles/style_utils.dart';
import 'package:get/get.dart';

class PhysiotherapistPage extends GetView<PhysiotherapistController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getNavbar(),
      body: SafeArea(
        child: Container(
          color: PRIMARY,
          constraints: const BoxConstraints.expand(),
          child: GetBuilder<PhysiotherapistController>(builder: (logic) {
            return Stack(
              children: [
                Column(
                  children: [
                    Container(
                      constraints: const BoxConstraints.expand(height: 150),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.elliptical(140, 50),
                              bottomRight: Radius.elliptical(140, 50)),
                          color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'Ks. Palacios Ana Valeria',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Text('joniosva@gmail.com',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17)),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'assets/imgs/start_icon.png',
                            height: 20,
                            width: 20,
                          ),
                          const Text('3/5',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        constraints: const BoxConstraints.expand(height: 200),
                        decoration: const BoxDecoration(color: PRIMARY),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 140, top: 20, right: 15, bottom: 15),
                              child: Text(
                                "Fisioterapeuta",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 50),
                              child: RowDetallesText(),
                            ),
                            ButtomAgendar(),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                color: PRIMARY,
                                child: ContainedTabBarView(
                                  tabs: const [
                                    Text('Comentario'),
                                    Text('Reseñas'),
                                  ],
                                  views: [
                                    Container(
                                      color: PRIMARY,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          BarTextChild(
                                            title: 'Profesion',
                                            description: 'Fisioterapia',
                                          ),
                                          BarTextChild(
                                              title: 'Ubicacion',
                                              description:
                                                  'Cerrada de colimas'),
                                          BarTextChild(
                                              title: 'Resumen',
                                              description:
                                                  'Me gusta la memerlada')
                                        ],
                                      ),
                                    ),
                                    Container(color: PRIMARY)
                                  ],
                                  onChange: (index) => print(index),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Positioned(
                  top: 110,
                  left: 25,
                  child: CircleAvatar(
                    radius: 70,
                    // Radio del círculo
                    backgroundColor: Colors.transparent,
                    // Color del fondo (transparente para que solo se vea el borde)
                    backgroundImage: AssetImage('assets/imgs/user_icon.jpg'),
                    // Imagen de fondo
                    foregroundColor: Colors.white, // Color del borde
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
