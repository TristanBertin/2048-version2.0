#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <QList>
#include "grid.h"


int main(int argc, char *argv[])
{
   QApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
   QCoreApplication a(argc, argv);

    srand(time(NULL));
    Grid grid1 ;


//    cout <<"*****  fusionRight   *****"<< endl;
//    grid1.fusionRight(true);
//    grid1.display();
//    cout <<"*****   fusionLeft   ****"<< endl;
//    grid1.fusionLeft(true);
//    grid1.display();
//    cout <<"*****   fusionDown   ****"<< endl;
//    grid1.fusionDown(true);
//    grid1.display();
//    cout <<"******  fusionUp   *****"<< endl;
//    grid1.fusionUp(true);
//    grid1.display();

     engine.rootContext()->setContextProperty("vueObjetCpp",&move);
     engine.load(QUrl(QStringLiteral("qrc:/Interface.qml")));

    return a.exec();
}
