anak_buah(adi, burhan).
anak_buah(burhan, bahrun).
anak_buah(burhan, bisrin).
anak_buah(bahrun, fahri).
anak_buah(bahrun, farah).
anak_buah(bisrin, ferdi).

bawahan_langsung(X, Y) :- anak_buah(X, Y).
atasan_langsung(X, Y) :- anak_buah(Y, X).
anak_buah_bawahan(X, Y) :- bawahan_langsung(X, Y).
anak_buah_bawahan(X, Y) :- bawahan_langsung(X, XY),anak_buah_bawahan(XY, Y).
