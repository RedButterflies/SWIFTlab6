//
//  main.swift
//  lab6SWIFT
//
//  Created by admin on 11/19/23.
//

import Foundation
//zad6.2.1
var tab : [Int] = Array(repeating:0,count:10)
print("Utworzona tablica z wartosciami domyslnymi: ")
for i in tab.indices
{
    print("E\(i).: \(tab[i])", terminator: ",")
}

//zad6.2.2
print("\n Wporwadz liczbe calkowita: ")
var wczytana = readLine()!
while(Int(wczytana)==nil)
{
    print("Wprowadzona wartosc jest nieprawidlowa. Wprowadz poprawna wartosc: ")
    wczytana = readLine()!
}
var liczba = Int(wczytana)!
tab.insert(liczba, at: 0)
print("Liczba \(liczba) zostala wprowadzona na 0 indeks tablicy")
for i in tab.indices{
    print("E \(i).: \(tab[i])", terminator: ", ")
}

////zad6.2.3

print("\n Wprowadz liczbe calkowita: ")
var lCalkowita = readLine()!
var sCalkowita = 0
while(Int(lCalkowita)==nil)
{
    print("Wprowadzono niepoprawna liczbe calkowita. Wprowadz poprawna liczbe: ")
    lCalkowita = readLine()!
}
sCalkowita = Int(lCalkowita)!
var randomIndex = Int.random(in: 1..<tab.count-1)
tab.insert(sCalkowita, at: randomIndex)
print("Wprowadzno element \(lCalkowita) na wylosowanym losowo indeksie \(randomIndex) ")
print("Zaktualizowana tablica: ")
for i in tab.indices
{
    print("E.\(i): \(tab[i])", terminator: ", ")
}
//zad6.3

print("Wprowadz liczbe elementow tablicy: ")
var wlElemT = readLine()!
while(Int(wlElemT)==nil || Int(wlElemT)! < 0 )
{
    print("Wprowadzono niepoprawny rozmiar tablicy. Wprowadz poprawny rozmiar: ")
    wlElemT = readLine()!
}
var lElemT = Int(wlElemT)!
var nowaTablica : [Int] = Array(repeating: 0, count: lElemT)
var wElem = ""
var aElem = 0
for i in nowaTablica.indices{
    print("Wprowadz element tablicy: ")
    wElem = readLine()!
    while(Int(wElem)==nil)
    {
        print("Wprowadzono niepoprawny element tablicy. Wprowadz poprawny element: ")
        wElem = readLine()!
    }
    aElem = Int(wElem)!
    nowaTablica[i] = aElem
}
print("Wprowadz liczbe calkowita: ")
var wlCalkowitaA = readLine()!
while(Int(wlCalkowitaA) == nil )
{
    print("Wprowadzono niepoprawna liczbe. Wprowadz poprawna liczbe, aby sprawdzic, gdzie znajduje sie w tablicy: ")
    wlCalkowitaA = readLine()!
}
var lCalkowitaA = Int(wlCalkowitaA)!
if(nowaTablica[0] == lCalkowitaA)
{
    print("Wprowadzona liczba jest pierwszym elementem tablicy")
}
else if(nowaTablica[nowaTablica.count - 1] == lCalkowitaA)
{
    print("Wprowadzona liczba jest ostatnim elementem tablicy")
}
else
{
    print("Wprowadzona liczba nie jest pierwszym ani ostatnim elementem tablicy")
}
        
//zad6.4
print("Wprowadz liczbe elementow tablicy: ")
var wpisanaLiczbaE = readLine()!
while(Int(wpisanaLiczbaE) == nil || Int(wpisanaLiczbaE)! < 0 )
{
    print("Wprowadzono niepoprawny rozmiar tablicy. Sprobuj ponownie")
    wpisanaLiczbaE = readLine()!
}
var rozmiar = Int(wpisanaLiczbaE)!
var tablicaC : [Int] = Array(repeating:0, count: rozmiar)
var tablicaD : [Int] = Array(repeating: 0, count: rozmiar)
var wprowadzony = ""
var ele = 0
for i in tablicaC.indices
{
    print("Wprowadz element \(i) tablicy A: ")
    wprowadzony = readLine()!
    while(Int(wprowadzony)==nil)
    {
        print("Wprowadzono niepoprawny element. Wprowadz liczbe calkowita: ")
        wprowadzony = readLine()!
    }
    ele = Int(wprowadzony)!
    tablicaC[i] = ele
}
for i in tablicaD.indices
{
    print("Wprowadz element \(i) tablicy B: ")
    wprowadzony = readLine()!
    while(Int(wprowadzony)==nil)
    {
        print("Wprowadzono niepoprawna wartosc. Wprowadz liczbe calkowita i sprobuj ponownie: ")
        wprowadzony = readLine()!
    }
    ele = Int(wprowadzony)!
    tablicaD[i] = ele
}

var licznikA = 0
for i in tablicaC.indices
{

    if (tablicaD.contains(tablicaC[i]))
    {
        licznikA += 1
    }
}
var licznikB = 0
for i in tablicaD.indices
{
    if(tablicaC.contains(tablicaD[i]))
    {
        licznikB += 1
    }
}
if(licznikA == tablicaC.count && licznikB == tablicaD.count)
{
    print("Tablice zawieraja identyczne elementy")
}
else{
    print("Tablice nie zawieraja identycznych elementow")
}
print("Tablica A: ")
for i in tablicaC.indices
{
    print("\(tablicaC[i])",terminator: ", ")
}
print("\n Tablica B: ")
for i in tablicaD.indices
{
    print("\(tablicaD[i])", terminator: ", ")
}
print("\n")
//zad 6.5
print("Wprowadz liczbe elementow dla tablicy liczb zmiennoprzecinkowych: ")
var wprowadzLE = readLine()!
while(Int(wprowadzLE)==nil || Int(wprowadzLE)! < 0)
{
    print("Wprowadzono niepoprawny rozmiar tablicy. Wprowadz wlasciwa wartosc i sprobuj ponownie")
    wprowadzLE = readLine()!
}
var LE = Int(wprowadzLE)!
var tabZm : [Double] = Array(repeating: 1.0, count:LE )
var wprowadzonyElement = ""
var elementZm = 0.0
for i in tabZm.indices
{
    print("Wprowadz element tablicy nr \(i) (liczbe zmiennoprzecinkowa): ")
    wprowadzonyElement = readLine()!
    while(Double(wprowadzonyElement)==nil)
    {
        print("Wprowadzono niepoprawna wartosc. Wprowadz poprawny element tablicy: ")
        wprowadzonyElement = readLine()!
    }
    elementZm = Double(wprowadzonyElement)!
    tabZm[i]=elementZm
}
print("Tablica liczb zmiennoprzecinkowych: ")
for i in tabZm.indices
{
    print("\(tabZm[i])", terminator: ", ")
}

var posortowana = tabZm.sorted{
    $0 < $1

}
print("\n")
print("Posortowana tablica")
print("\n")
for i in posortowana.indices
{
    print("\(posortowana[i])",terminator: ",")
}
print("\n Najmniejsza liczba w tablicy: \(posortowana[0])")
print("\n Najwieksza liczba w tablicy: \(posortowana[posortowana.count-1])")

//zad6.6
print("Wprowadz liczbe elementow tablicy: ")
var dlugoscTab = readLine()!
while(Int(dlugoscTab)==nil)
{
    print("Wprowadzono niepoprawna dlugosc tablicy. Wprowadz wlasicwa wartosc i sprobuj ponownie: ")
    dlugoscTab = readLine()!
}
var dlugoscW = Int(dlugoscTab)!
var tablicaT : [Int] = Array (repeating: 0, count: dlugoscW)
var wczytaneW = ""
var elementW = 0
for i in tablicaT.indices
{
    print("Wprowadz element tablicy(liczba calkowita)")
    wczytaneW = readLine()!
    while(Int(wczytaneW)==nil)
    {
        print("Wprowadzono niewlasciwa wartosc. Wprowadz wlasciwa wartosc i sprobuj ponownie: ")
        wczytaneW = readLine()!
    }
    elementW = Int(wczytaneW)!
    tablicaT[i]=elementW
}
print("\n Tablica: ")
for i in tablicaT.indices
{
    print("\(tablicaT[i])", terminator: ", ")
}
var rosnace : [[Int]] = Array ()
var ciag : [Int] = Array ()
for i in tablicaT.indices
{
    if(i==0 && tablicaT[i]<tablicaT[i+1])
    {
        ciag.append(tablicaT[i])
    }
    else if( i<tablicaT.count-1 && i>0 && tablicaT[i]>tablicaT[i-1])
    {
        ciag.append(tablicaT[i])
    }
    else if(i==tablicaT.count-1 && (tablicaT[i-1]<tablicaT[i]))
    {
        ciag.append(tablicaT[i])
    }
   else if (i>0 && tablicaT[i]<tablicaT[i-1])
    {
        rosnace.append(ciag)
        ciag = []
       ciag.append(tablicaT[i])
    }
}
rosnace.append(ciag)

print("\nCiagi: ")
var najdluzszy : [Int] = []
for i in rosnace.indices
{
    if rosnace[i].count > najdluzszy.count{
        najdluzszy = rosnace[i]
    }
    print(rosnace[i])
}
if (najdluzszy.count == 1 || najdluzszy.count == 0)
{
    print("Podciag rosnacy nie istnieje")
}
else
{
    print("Najdluzszy podciag rosnacy: \(najdluzszy)")

}
//zad6.7
var tablicaDwuWym : [[Int]] = Array ()
var wiersz1 : [Int] = Array(repeating: 7, count: 4)
var wiersz2 : [Int] = Array(repeating: 6, count: 4)
tablicaDwuWym.append(wiersz1)
tablicaDwuWym.append(wiersz2)
//print("[", terminator: "")
for i in tablicaDwuWym.indices
{
    
    for j in wiersz1.indices
    {
        print("[\(tablicaDwuWym[i][j])]",terminator: "")
    }
    print()
    
    
}
//print("]\n", terminator: "")
//zad6.8
//MACIERZE
print("Wprowadz liczbe wierszy macierzy: ")
var wczytliczbaWierszy = readLine()!
while(Int(wczytliczbaWierszy)==nil)
{
    print("Wprowadzno nieprawidlowa liczbe wierszy. Sprobuj ponownie: ")
    wczytliczbaWierszy = readLine()!
}
var liczbaWierszy = Int(wczytliczbaWierszy)!


print("Wprowadz liczbe kolumn macierzy: ")
var wczytliczbaKolumn = readLine()!

while(Int(wczytliczbaKolumn)==nil)
{
    print("Wprowadzono niepoprawna liczbe kolumn. Wprowadz poprawna liczbe kolumn: ")
    wczytliczbaKolumn = readLine()!
    
}
var liczbaKolumn = Int(wczytliczbaKolumn)!
var macierz : [[Int]] = Array()
var wiersz : [Int] = Array(repeating: 0, count: liczbaKolumn)
var we = ""
var ee = 0
for i in stride(from: 0, to:liczbaWierszy, by:1){
    for j in wiersz.indices
    {
        print("Wprowadz element [\(i)][\(j)] macierzy: ")
        we = readLine()!
        while(Int(we)==nil)
        {
            print("Wprowadzono niepoprawny element. Wprowadz poprawny element i sproboj ponownie:")
            we = readLine()!
        }
        ee = Int(we)!
        wiersz[j]=ee
        
    }
    macierz.append(wiersz)
}

for i in macierz.indices
{
    for j in wiersz.indices
    {
        print ("[\(macierz[i][j])]",terminator: "")
        
    }
    print()
}
var najwiekszaSuma = 0
var suma = 0
var nrWiersza = 0
var wierszZNajwSum = [0]

for i in macierz.indices{
    suma = macierz[i].reduce(0,+)
    if(suma > najwiekszaSuma)
    {
        najwiekszaSuma = suma
        nrWiersza = i
        wierszZNajwSum = macierz[i]
    }
}
print("Wiersz o najwiekszej sumie elementow: \(wierszZNajwSum), jest to wiersz \(nrWiersza), suma elementow w tym wierszu: \(najwiekszaSuma)")

