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

### TREŚĆ ZADANIA:
Podanych zostało kilka plików obiektowych. Zadaniem jest stworzenie biblioteki o nazwie **lib.o**(ld lub ar) **tylko** z tych plików obiektowych które są potrzebne do poprawnego działania programu stworzonego na podstawie pliku **main.o**. Powstałe **lib.o** skompiluj gcc bez flag i odpal program(**./a.out argument**) podając jako argument ilość plików .o w utworzonej bibliotece.  

## ZADANIA 2 
### CEL ZADANIA:
Przykłady użycia poszczególnych narzędzi BINUTILS, odczytywanie informacji z plików obiektowych.

### TREŚĆ ZADANIA:
Dowiedz się w jakim pliku obiektowym znajduję się hasło, który kryję się pod symbolem o nazwie **„password”**. Plik ten ma ukryty **kod(„password = ...”)** w ciągu znaków, wyszukaj go(**strings, grep**). Znaleziony kod będzie pierwsza częścią odpowiedzi. Czas na drugą część odpowiedzi. Znajdź za pomocą **objdump** w jakiej sekcji znajduję się symbol **„password”** i skopiuj tylko tą sekcję do pliku **„passcopy.o”**.  Sprawdź zsumowany rozmiar wszystkich sekcji w „passcopy.o” zapisany w systemie dziesiętnym, wynik jest drugą częścią odpowiedzi. Kolejną część odpowiedzi zdobędziemy pośrednio poprzez odnalezienie możliwych zestawów argumentów jakie przyjąć może funkcja **„fun”**. Mamy plik **main.s** i przy pomocy **„c++filt”** możemy zobaczyć kod assembly z oryginalnymi nazwami funkcji. Ilość zestawów argumentów z **co najmniej** jednym wystąpieniem inta jest trzecią i ostatnią częścią odpowiedzi. Uruchom program(**./a.out argument**) podając jako argument sklejone ze sobą części odpowiedzi. 

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
