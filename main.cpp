#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <QList>
#include "grid.h"
#include <QApplication>


int main(int argc, char *argv[])
{
   QGuiApplication app(argc, argv);

   QApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
   //QCoreApplication a(argc, argv);

   QQmlApplicationEngine engine;

   srand(time(NULL));

   Grid grid1 ;

   engine.rootContext()->setContextProperty("vueObjetCpp",&grid1);
   engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
