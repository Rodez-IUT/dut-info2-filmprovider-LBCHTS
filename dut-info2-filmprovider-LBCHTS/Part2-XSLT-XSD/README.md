# Partie 2 - XSLT, XSD

## Exercice XSLT1 - Requêtes XPATH

Ouvrir le fichier "FilmProvider.xml" disponible dans les ressources et  écrire les requêtes Xpath correspondant aux phrases suivantes :

1. Sélectionner les titres de tous les films.
2. Sélectionner le résumé (texte uniquement) du film dont le titre est "Minority Report".
3. Sélectionner le nom du dernier réalisateur dans l'ordre du document.
4. Sélectionner le titre du deuxième film dans l'ordre du document.
5. Sélectionner la position dans l'ordre du document des films dont le texte du résumé contient le mot « mafia ».
6. Sélectionner les titres des films pour lesquels une image est disponible.
7. Sélectionner les dates des films de Scorcese.
8. Retourner  le nombre de films sortis en 2003.

> fix #2.1 requêtes XPATH

## Exercice XSLT2 - Première feuille XSL

1. Créer une feuille de style XSLT « FilmProvider-Basic1.xsl » ne définissant aucun modèle explicite et configurer 
IntelliJ pour appliquer cette feuille de style au document « FilmProvider.xml ». Lancer la transformation et observer la sortie.
2. Ajouter à la feuille de style un modèle pour le noeud racine contenant uniquement l'élément XSLT « apply-templates » 
sans attribut. Relancer la transformation ; comparer avec la sortie précédente.
3. Supprimer  l'élément  « apply-templates » et insérer dans le modèle « Hello World ! ». Observer la nouvelle sortie. 

> fix #2.2 Première feuille XSL

## Exercice XSLT3 - Feuille XSL pour transformation HTML

Copier dans votre espace de travail, le fichier "FilmProvider-Basic2.html" disponible dans les ressources.  
Ecrire une feuille de style XSLT « FilmProvider-Basic2.xsl » capable de générer la page HTML "FilmProvider-Basic2.html" 
à partir du document "FilmProvider.xml". 

> fix #2.3 Feuille XSL pour transformation en HTML

## Exercice XSLT4 - Feuille XSL pour transformation HTML

Reprenez la feuille de style « FilmProvider-Basic2.xsl » et complétez là pour que le document HTML de sortie affiche 
pour chaque film, dans une nouvelle colonne, le nom et le prénom du réalisateur.

> fix #2.4 Feuille XSL pour transformation en HTML

## Exercice XSLT5 - Feuille XSL pour transformation HTML avec images

Copier dans votre espace de travail, le fichier "FilmProvider.html" et les fichiers images disponibles dans les ressources.  
Ecrire une feuille de style XSLT « FilmProvider.xsl » capable de générer la page HTML "FilmProvider.html" à partir du document "FilmProvider.xml".  
Améliorations : trier les films par date de sortie.

> fix #2.5 Feuille XSL pour transformation en HTML avec images

## Exercice XSD6 - Schema XML

La société FilmProvider est spécialisée dans la publication d’informations sur les films cinématographiques. 
Pour  communiquer facilement avec  ses partenaires (vidéoclub, cinéclub...), FilmProvider décide de publier ses informations au format XML.  
Une fiche de film est composée d'un titre, d’un identifiant, et d'un résumé.  
La fiche mentionne aussi l’année de sortie du film et le réalisateur.   
Le résumé est composé de texte et d’une image optionnelle.  
Le réalisateur est caractérisé par son nom et  son prénom.  
Les fiches de film et des réalisateurs sont stockés dans un même fichier.   
On ne veut pas dupliquer les informations relatives à un même réalisateur.  

1. Ecrire un XML Schema « FilmProvier.xsd » décrivant la structure des documents devant être générés par la société « FilmProvider ». 
Le fichier XML "FilmProvider.xml" fourni en ressource doit être conforme au XML Schema à écrire.
2. Créer un nouveau document XML en indiquant qu’il doit être conforme au XML Schema écrit précédemment. Remplir le document 
en vous aidant des fonctionnalités fournies par votre éditeur XML.

> fix #2.6 Schema XML

## Exercice XSD7 - Schema XML amélioré
 

1. Reprendre le schéma FilmProvider.xsd pour qu'il intègre les contraintes suivantes :

- les éléments définis dans le schéma doivent être lié à l'espace de nom « http://formationxml/filmprovider »
- les attributs id_realisateur des éléments realisateur et film doivent être déclarés respectivement comme key et keyref
- les id_realisateur et id_film doivent être conformes à des patterns adaptés (real_<num>, film_<num>)
- l’année de sortie d’un film doit être comprise entre 1920 et 2006.

2. Créer un nouveau document XML en indiquant qu’il doit être conforme au XML Schema écrit précédemment. 
Remplir le document en vous aidant des fonctionnalités fournies par votre éditeur XML.
 
 > fix #2.7 Schema XML amélioré

