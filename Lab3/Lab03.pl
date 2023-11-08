%zadanie
%
rzeczownik(ala).
rzeczownik(jan).
rzeczownik(kot).
rzeczownik(pies).
rzeczownik(rower).
rzeczownik(slonce).

czasownik(ma).
czasownik(jest).
czasownik(lubi).

zadanie(A,B,C):-
    rzeczownik(A),
    rzeczownik(B),
    rzeczownik(C),
    write('zdanie poprawne'), nl,
    write(A),write(' '),write(B), write(' '),write(C), write(' ').

%silnia rek
silnia(0,1).
silnia(N,Wynik):-
    N > 0,
    NewN is N - 1,
    silnia(NewN, NewWynik),
    Wynik is N*NewWynik.

potega(_,0,1).
potega(A,B,C):-
    B > 0,
    B1 is B-1,
    potega(A,B1, C1),
    C is A *C1.

warunek(N):-
    (   N>0 ->
    write ('N wieksze od zera');
    write('N jest mniejsze od 0')
    ).

main:-
    silnia(4,Wynik).
