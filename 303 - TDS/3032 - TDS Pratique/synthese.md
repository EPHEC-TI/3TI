#### Complexes

on a le complexe suivant: `a = 1+i`

conjugé: `conj(a)`   
module: `abs(a)`    
angle (deg): `angle(a) * (180/pi)`    

#### Vecteurs

vecteur de 1 à 10: `vec = 1:10`    
vecteur de 1 à 10 **avec pas de 0.1**: `vec = 1:0.1:10`    
voir le 25ème élément: `vec(1,25)`    
voir la taille du vecteur: `length(vec)`    
voir la taille min et max du vecteur: `size(vec)`   
vecteur contenant les chiffres 1, 4, 7 (rangée): `vec = [1,4,7]`    
vecteur contenant les chiffres 1, 4, 7 (colonne): `vec = [1;4;7]`     
concaténation: `[vec1,vec2] ou [vec1;vec2]`     

#### Matrices
`m = [1,2,3;4,5,6;7,8,9]`    

récupérer un élément (ex: le "5"): `m(2,2)`    
récupérer tout une rangée: `m(2,:) % renvoit 4,5,6`    
récupérer tout une colonne: `m(:,3) % renvoit 3,6,9`   

#### Cellules
`A(1,1) =  {[1 2;0 5;7 2]}`     

Affectation: `A(1,2) = ...`     
Sélection: `A{1,2}`     

#### Matrices particulières et calculs
matrice ne contenant que des 1: `M = ones(4,4)`   
matrice ne contenant que des 0 sauf des 1 sur la diagonale: `I = eye(4,4)`   
remplacer la 2ème colonne de M par des 2: `M(:,2) = 2`    

Multiplier des matrices (M et N sont des matrices): `M*N`    
> On ne peut multiplier des matrices que si elles ont la même dimension !   

Inverse d'une matrice: `M_INV = M^(-1)`    
Matrice transposée (ligne devient colonne et inversément + complexe conjugé si un complexe fait partie de la matrice): `M_TRANSP = M'`    
Prendre chacun des éléments d'une matrice et les élever à la puissance **n**: `M.^n % ne pas oublier le point !`     
Multiplication terme à terme: `M.*I`    

#### Graphiques

Faire un graphique: `plot(x,y)`    
Donner un titre: `title'mon super titre de graph'`    
Ajouter une grille au graph: `grid on ou set(gca, 'Xgrid', 'on', 'Ygrid', 'on')`   
Dessiner le graph sur une nouvelle figure (fenêtre): `figure`    
Ajouter un graphique sur la même fenêtre: `subplot(x,y,position)`     
Dessiner les points du graph **sans les relier**: `stem(x,y)`   
