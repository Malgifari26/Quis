raja(x).

anak(bahrun, x).
anak(farah, x).
anak(fahri, bahrun).
anak(salma, bahrun).
anak(salsa, fahri).
anak(arfan, fahri).
anak(farhan, salma).
anak(burhan, farah).
anak(ferdi, farah).
anak(fariz, ferdi).
anak(syifa, ferdi).

wanita(farah).
wanita(salma).
wanita(salsa).
wanita(syifa).

keturunan_laki_laki(Raja, X) :-
    raja(Raja),
    X == Raja.
keturunan_laki_laki(Raja, X) :-
    anak(X, Raja),
    \+ wanita(X).
keturunan_laki_laki(Raja, X) :-
    anak(Anak, Raja),
    \+ wanita(Anak),
    keturunan_laki_laki(Anak, X).

calon_raja(X) :-
    raja(Raja),
    keturunan_laki_laki(Raja, X).
