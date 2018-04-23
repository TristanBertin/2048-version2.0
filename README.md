# 2048-version2.0

### Descriptif de l'applcation

L'application est très simple d'utilisation. Les touches haut, bas, gauche et droite du clavier seront utilisés pour décaler les cases vers leurs directions respectives. Le bouton New permet de générer une nouvelle partie et le score est affiché à chaque mouvement de la grille. 
Le jeu se termine lorsqu'aucun mouvement n'est plus possible, la fenêtre affiche alors "You loose", seul le bouton New est accessible.


### But du jeu 
Le but du jeu est de fusionner des nombres ensemble (puissances de 2) afin d'atteindre le nombre ultime '2048' et gagner la partie !

L'aire du jeu 2048 est une grille de 4 lignes par 4 colonnes avec donc 16 cellules carrées. Chaque cellule peut être vide ou contenir un nombre. Au début du jeu, il y a deux cases avec un chiffre de valeur 2 ou 4 positionnées aléatoirement sur la grille.

Lorsque vous parvenez à faire entrer en collision 2 briques avec le même numéro dedans, elles fusionnent en une seule nouvelle brique dont le numéro sera l'addition des deux nombres précédents : 2+2=4, 4+4=8, ... 1024+1024=2048 !

Pour déplacer les briques sur la grille, vous devez juste choisir une direction (haut, droite, bas ou gauche). Toutes les briques vont se déplacer dans la direction choisie, jusqu'à ce qu'elles fusionnent avec une brique de même valeur ou bien qu'elles soient bloquées par une brique avec un numéro différent.

![Screenshot](Capture.jpg)
