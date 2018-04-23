#ifndef GRID_H
#define GRID_H

#include <QObject>
#include <QList>
#include <QString>
#include <QTime>
#include <QFile>
#include <QTextStream>
#include <QMessageBox>
#include <QApplication>
#include <QInputDialog>

class Grid : public QObject
{
    Q_OBJECT
private :

    int nbCell = 4  ;
    int cellTab[4][4] ;

    bool cellShiftedDown = false;
    bool cellShiftedUp = false;
    bool cellShiftedLeft = false;
    bool cellShiftedRight = false;

    int twoOrFour();
    void initValues();
    void initRandomSpot() ;

public:

    Grid(QObject *parent= nullptr);
    Grid( const Grid &grid );

    void display();
    void checkDeath();

    void fusionRight(bool testDeath);
    void fusionLeft( bool testDeath);
    void fusionUp(   bool testDeath);
    void fusionDown( bool testDeath);

    void shiftRight();
    void shiftLeft();
    void shiftUp();
    void shiftDown();
};

#endif //
