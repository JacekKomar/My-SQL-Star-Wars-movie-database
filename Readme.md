# Star Wars movies database

Projekt opracowano w MySQL przy użyciu phpMyAdmin.

## Movie

![](/TableMovie.png)

Tabela zawiera informację o filmach, datach ich powstania oraz dostępności online.

## Information About Movie

![](/InformationAboutMovieTable.png)

Tabela zawiera dane o gatunkach filmów, kto je reżyserował oraz czy należą do którejś trylogii.

## Era

Tabela informuje o epokach w jakich miały miejsce poszczególne filmy.

## Galactic Empire Movies

![](/Question1.png)

```
SELECT Movie.Title, InformationAboutMovie.Genre, InformationAboutMovie.Director, Era.Era, InformationAboutMovie.Trilogy
FROM ((Movie
INNER JOIN InformationAboutMovie ON Movie.Id = InformationAboutMovie.Id)
INNER JOIN Era ON Movie.Id = Era.Id)
WHERE Era IN("Rebellion era", "Reign of the Empire")
ORDER BY Era DESC;
```

Zapytanie zwraca dane filmów, których akcja dzieje się w okresie panowania Imperium Galaktycznego.

## Movies Created By Dave Filoni

![](/Question2.png)

```
SELECT Movie.Title, Era.Era, Movie.Date, Movie.InDisneyPlus
FROM ((Movie
INNER JOIN Era ON Movie.Id = Era.Id)
INNER JOIN InformationAboutMovie ON Movie.Id = InformationAboutMovie.Id)
WHERE Director = "Dave Filoni"
ORDER BY Date ASC;
```

Tabela pokazuje informacje tylko o dziełach stworzonych przez Dave'a Filoniego.

## Only Trilogy Movie

![](/Question3.png)

```
SELECT Movie.Title, Movie.Date, InformationAboutMovie.Director, Era.Era, InformationAboutMovie.Trilogy
FROM ((Movie
INNER JOIN Era ON Movie.Title = Era.Title)
INNER JOIN InformationAboutMovie ON Movie.Id = InformationAboutMovie.id)
WHERE Trilogy IS NOT NULL
ORDER BY Trilogy ASC;
```

Zapytanie zwraca informację o filmach, które stworzone zostały w ramach istniejących trylogii.

## Series Available On Disney Plus

![](/Question4.png)

```
SELECT Movie.Title, Movie.InDisneyPlus, Era.Era, InformationAboutMovie.Genre
FROM ((Movie
INNER JOIN Era ON Movie.Id = Era.Id)
INNER JOIN InformationAboutMovie ON Movie.Id = InformationAboutMovie.Id)
WHERE Genre IN ("Live action series", "Animation series")
HAVING InDisneyPlus = "Available"
ORDER BY Genre DESC;
```

Zapytanie zwraca dane seriali aktorskich oraz animowanych dostępnych w ramach oferty Disney Plus.
