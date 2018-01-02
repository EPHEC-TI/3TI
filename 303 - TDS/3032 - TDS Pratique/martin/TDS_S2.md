##### 2.4.6
>> X = ones(4)

X =

     1     1     1     1
     1     1     1     1
     1     1     1     1
     1     1     1     1

>> X(:,2) = 2

X =

     1     2     1     1
     1     2     1     1
     1     2     1     1
     1     2     1     1
	 

>> X(3,:) =3

X =

     1     2     1     1
     1     2     1     1
     3     3     3     3
     1     2     1     1

	 
##### 2.4.7
	 
>> I = eye(4)

I =

     1     0     0     0
     0     1     0     0
     0     0     1     0
     0     0     0     1
	 
##### 2.4.8

M =

     1     2     1     1
     1     2     1     1
     3     3     3     3
     1     2     1     1

>> M*I

ans =

     1     2     1     1
     1     2     1     1
     3     3     3     3
     1     2     1     1

>> I*M

ans =

     1     2     1     1
     1     2     1     1
     3     3     3     3
     1     2     1     1
	 
Multiplier par une matrice identité ne change rien, une matrice identié est l'équivalent de 1 en produit scalaire.

##### 2.4.9
>> F = M + I

F =

     2     2     1     1
     1     3     1     1
     3     3     4     3
     1     2     1     2

>> F^(-1)

ans =

    0.9091   -0.4545   -0.0909   -0.0909
   -0.0909    0.5455   -0.0909   -0.0909
   -0.5455    0.2727    0.4545   -0.5455
   -0.0909   -0.4545   -0.0909    0.9091

>> F*F^(-1)

ans =

    1.0000   -0.0000   -0.0000    0.0000
    0.0000    1.0000   -0.0000    0.0000
    0.0000    0.0000    1.0000         0
    0.0000         0   -0.0000    1.0000

On retombe sur une matrice identité !!!!!!!

##### 2.4.10
>> M^(-1)
Warning: Matrix is close to singular or badly scaled. Results may be inaccurate. RCOND =  3.083953e-18. 
> In matlab.internal.math.mpower.viaMtimes (line 35) 

ans =

   1.0e+16 *

         0    1.8014         0   -1.8014
         0    0.0000   -0.0000         0
    1.8014   -1.8014         0         0
   -1.8014         0         0    1.8014
   
-> trois colonnes étaient identiques

##### 2.4.11
>> C

C =

     0     1     2     3

>> M

M =

     1     2     1     1
     1     2     1     1
     3     3     3     3
     1     2     1     1

>> M*C
Error using  * 
Inner matrix dimensions must agree.
 
>> C*M

ans =

    10    14    10    10
	
-> il faut que la première matrice du produit et le même nombre de colonnes que la deuxième n'a de lignes

##### 2.4.12
>> C'

ans =

     0
     1
     2
     3

>> M'

ans =

     1     1     3     1
     2     2     3     2
     1     1     3     1
     1     1     3     1

>> M'*C'

ans =

    10
    14
    10
    10
-> Car maintenant, M' a le meme nombre de colonne que C' n'a de lignes

##### 2.4.12
....
Bon bah j'ai perdu mon fichier ou j'avais tout noté parce que je suis trop débile
...

##### 2.4.21
(a)
```
>> imread TP_file/Image/LENNA.BMP

ans =

  256×256 uint8 matrix
```
(b)
```
>> imshow file/img/LENNA.BMP
```
(c)
```
>> impixelinfo
```
(d)
```
>> M = L(121:142,121:155)
>> imshow(M)
```
(e)
```
>> mean(M)

ans =

  Columns 1 through 13

  140.3636  131.3182  121.0455  114.4091  108.0455  105.2727   96.6364   92.2273   94.5455   95.6818   84.1364   85.1818   74.4545

  Columns 14 through 26

   77.5455   79.3636   90.2273  117.0455  123.5000  111.4545  112.0000   93.0909   85.0455   84.8636   90.8182   91.5909   95.9091

  Columns 27 through 35

   99.9545  104.5000  110.4091  114.9545  116.0909  123.2273  131.5909  144.7273  165.6818
```
##### 2.4.22
```
r1 =

   208   231    33   254   159

>> r2 = randperm(255, 5)

r2 =

    25    71   139   242   243

>> r3 = randperm(255, 5)

r3 =

    41   247   243   123   201

>> r4 = randperm(255, 5)

r4 =

    37   108   232   200   241

>> r5 = randperm(255, 5)

r5 =

   168    10   215   236   171
   
 >> R = [r1;r2;r3;r4;r5]

R =

   208   231    33   254   159
    25    71   139   242   243
    41   247   243   123   201
    37   108   232   200   241
   168    10   215   236   171
 >> imagesc(R)
```
#### 2.5 Dessiner avec Matlab
##### 2.5.1
https://nl.mathworks.com/help/matlab/ref/plot.html?searchHighlight=plot&s_tid=doc_srchtitle
##### 2.5.2
(a)
`grid on` et `set(gca, 'XGrid', 'on', 'YGrid', 'on')` sont équivalents, `set` permet juste de préciser les grilles sur l'axe qu'on veut
##### 2.5.3
(a)
```
%i.
>> subplot(4,1,1);
>> t=0:0.2:4;
>> plot(sin(t));
%ii.
>> subplot(4,1,2);
>> t=0:0.5:4;
>> plot(sin(t));
%iii
>> subplot(4,1,3);
>> t=0:0.2:4;
>> stem(sin(t));
>> subplot(4,1,4);
>> t=0:0.5:4;
>> stem(sin(t));
```
(b) 
```
close all;
clear all;
clc;

t1 = 0:0.2:4;
t2 = 0:0.5:4;

subplot(4,1,1);
plot(sin(t1));
title 'i';
grid on;
subplot(4,1,2);
plot(sin(t2));
title 'ii';
grid on;
subplot(4,1,3);
t=0:0.2:4;
stem(sin(t1));
title 'iii';
grid on;
subplot(4,1,4);
t=0:0.5:4;
stem(sin(t2));
title 'iiii';
grid on;
```
(c) 
```
>> R = rand(10)

ans =

    0.6241    0.2619    0.9037    0.6099    0.1679    0.0967    0.4538    0.3993    0.1062    0.4228
    0.6791    0.3354    0.8909    0.6177    0.9787    0.8181    0.4324    0.5269    0.3724    0.5479
    0.3955    0.6797    0.3342    0.8594    0.7127    0.8175    0.8253    0.4168    0.1981    0.9427
    0.3674    0.1366    0.6987    0.8055    0.5005    0.7224    0.0835    0.6569    0.4897    0.4177
    0.9880    0.7212    0.1978    0.5767    0.4711    0.1499    0.1332    0.6280    0.3395    0.9831
    0.0377    0.1068    0.0305    0.1829    0.0596    0.6596    0.1734    0.2920    0.9516    0.3015
    0.8852    0.6538    0.7441    0.2399    0.6820    0.5186    0.3909    0.4317    0.9203    0.7011
    0.9133    0.4942    0.5000    0.8865    0.0424    0.9730    0.8314    0.0155    0.0527    0.6663
    0.7962    0.7791    0.4799    0.0287    0.0714    0.6490    0.8034    0.9841    0.7379    0.5391
    0.0987    0.7150    0.9047    0.4899    0.5216    0.8003    0.0605    0.1672    0.2691    0.6981
```
(e)
* `plot(t,y)` fait correspondre chaque valeur de t sur l'axe des abscisses (de 0 à 10) avec sa valeur de y (de 0 à 100) sur l'axe des ordonnées.
* `plot(y)` fait correspondre chaque index des éléments de y (de 1 à 100) avec sa valeur (de 0 à 100).
(f)
* On observe en bleu le sin de t pour chaque valeur qu'il prend entre 0 et 10 et en rouge le cosinus 
##### 2.5.4
