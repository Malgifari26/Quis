orangtua(hasan,siti).
orangtua(hasan,aminah).
orangtua(hasan,ali).
orangtua(siti,aisyah).
orangtua(aminah,ramlah).
orangtua(ali, hasbi).
orangtua(aisyah, hasna).
orangtua(amir, hasna).
orangtua(abu, robby).
orangtua(abu, adam).
orangtua(ramlah, robby).
orangtua(ramlah, adam).
orangtua(hasbi, mariam).
orangtua(siddiq, mariam).

kakek(hasan, aisyah).
kakek(hasan, ramlah).
kakek(hasan, hasbi).

pria(hasan).
pria(ali).
pria(amir).
pria(abu).
pria(siddiq).
pria(robby).
pria(adam).

wanita(siti).
wanita(aminah).
wanita(aisyah).
wanita(ramlah).
wanita(hasbi).
wanita(hasna).
wanita(mariam).

is_ayah(X):-orangtua(X,_), pria(X).
ayah(X,Y):-orangtua(X,Y),pria(X).
ibu(X,Y):-orangtua(X,Y),wanita(X).
cucu(X,Y):-kakek(X,Y).
