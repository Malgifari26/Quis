anak(ita,anto).
anak(budi,anto).
anak(ida,anto).
anak(hadi,deni).
anak(diha,budi).
anak(andi,rudi).
anak(rita,rudi).
pasangan(deni,ita).
pasangan(anto,wati).
pasangan(rudi,ida).
wanita(wati).
wanita(ita).
wanita(ida).
wanita(diha).
wanita(rita).
saudara_perempuan(ita,ida).
saudara_perempuan(ida,ita).
saudara_perempuan(ita,budi).
saudara_perempuan(ida,budi).
saudara_perempuan(rita,andi).

m(X):-not(wanita(X)).
ayah(X,Y):-anak(Y,X).
istri(X,Y):-pasangan(Y,X).
suami(X,Y):-pasangan(X,Y).
ibu(X,Z):-ayah(Y,Z),istri(X,Y).
a(X,Y):-ayah(Y,X);ibu(Y,X).
saudara(X,Y):-a(X,Z),a(Y,Z).
saudara_cowok(X,Y):-saudara(X,Y),m(X).
paman(X,Y):-saudara_cowok(X,Z),ibu(Z,Y);saudara_cowok(X,Z),ayah(Z,Y).
bibi(X,Y):-saudara_perempuan(X,Z),ibu(Z,Y);saudara_perempuan(X,Z),ayah(Z,Y).