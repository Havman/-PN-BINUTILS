## Półchłopek Igor - BINUTILS

## WPROWADZENIE:
Przygotowałem 2 zadania. Skupiłem się na tym, żeby poruszyć wszystkie opisane przeze mnie w prezentacji narzędzia BINUTILS. 

## WYMAGANIA:
**gcc** oraz **binutils**

## INSTRUKCJA:

a) Pobieranie repozytorium: 

```
./run_polchlopek_igor.sh clone
```

b) Uruchamianie środowiska

```
./run_polchlopek_igor.sh run
```

## ZADANIA 1 
### CEL ZADANIA:
Na podstawie analizy plików obiektowych, stworzenie odpowiedniej biblioteki, pozwalającej na bezproblemowe uruchomienie programu.

## TREŚĆ ZADANIA:
Podany został plik „main.c” oraz kilka plików obiektowych. Za pomocą komendy gcc z flagą -c użytej na pliku „main.c” utwórz plik „main.o”. Następnie stwórz bibliotekę o nazwie „lib.o”(ld lub ar) TYLKO z tych plików obiektowych które są potrzebne do poprawnego działania programu main oraz pliku „main.o”. Powstałe „lib.o” skompiluj gcc bez flag i odpal program. 

## ZADANIA 2 
### CEL ZADANIA:
Przykłady użycia poszczególnych narzędzi BINUTILS, odczytywanie informacji z plików obiektowych.

## TREŚĆ ZADANIA:
Przy pomocy komendy „nm” dowiedz się w jakim pliku znajduję się hasło, który kryję się pod symbolem o nazwie „password”. Hasło zostało ukryte w ciągu znaków, wyszukaj go za pomocą Strings oraz grep. Wyszukasz go pod hasłem „Tutaj”. Znaleziony kod będzie pierwsza częścią odpowiedzi, a teraz znajdź za pomocą „objdump” w jakiej sekcji znajduję się kod i skopiuj za pomocą „objcopy” tylko tą sekcję do pliku „passcopy.o”.  Sprawdź ogólny rozmiar zapisany w systemie dziesiętnym narzędziem „size”, jest to druga część odpowiedzi. Ostatnim zadaniem będzie wypisanie możliwych zestawów argumentów jakie przyjmuje funkcja „fun”. Mamy plik main.s i jego zawartość przepuścimy przez narzędzie „c++filt”, co rozkoduje nam z kod assembly. Możemy się wspomóc narzędziem grep. 

## USUWANIE PO SKOŃCZENIU
Ściągnięte pliki możemy usunąć używająć
```
./run_polchlopek_igor.sh clean
```

Link do wideoprezentacji:  
https://www.youtube.com/watch?v=FIOo9HMlJLs&t=1s

Bibliografia:  
https://www.thegeekstuff.com/2017/01/gnu-binutils-commands/
http://www.linux.pl/man/index.php
