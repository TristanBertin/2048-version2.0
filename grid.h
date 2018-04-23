#ifndef GRID_H
#define GRID_H

#include <QObject>
#include <QList>
#include <QString>
#include <QTime>
#include <QFile>
#include <QTextStream>


class Grid : public QObject
{
    Q_OBJECT
private :

    int nbCell = 4  ;
    int cellTab[4][4] ;
    bool alive = true;

    bool cellShiftedDown = false;
    bool cellShiftedUp = false;
    bool cellShiftedLeft = false;
    bool cellShiftedRight = false;

    int twoOrFour();
    void initValues();
    void initRandomSpot();
    void display();
    void checkDeath();

    void shiftRight();
    void shiftLeft();
    void shiftUp();
    void shiftDown();

signals:
    void gridChanged();
    void replay();

public:
    explicit Grid(QObject *parent= nullptr);
    Grid( const Grid &grid );

    QList<int> readGrid();
    bool readLifeState();
    Q_PROPERTY(QList<int> gridQML READ readGrid NOTIFY gridChanged);
    Q_PROPERTY(bool alive READ readLifeState NOTIFY replay);

    Q_INVOKABLE void fusionRight(bool testDeath);
    Q_INVOKABLE void fusionLeft( bool testDeath);
    Q_INVOKABLE void fusionUp(   bool testDeath);
    Q_INVOKABLE void fusionDown( bool testDeath);
    Q_INVOKABLE void newGame();

    int getNbCell();

};

#endif //
