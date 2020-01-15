# Partie 1 - XML et DTD

## Exercice XML1 - Document XML Bien Formé

La société FilmProvider est spécialisée dans la publication d’informations sur les films cinématographiques. 
Pour communiquer facilement avec ses partenaires (vidéo club, ciné-club...), FilmProvider décide de publier ses 
informations au format XML.
FilmProvider ne possède pas d'outil spécialisé et le service chargé de la conception fait une maquette dans un éditeur 
de texte. Comment vérifier que cette maquette est un document XML bien formé ?
Le document, qui transgresse en fait 7 fois les règles du « bien formé », est contenu dans le fichier  
FilmProvider_bad.xml, fourni en ressource. Vous êtes chargé de le corriger, et vous ne disposez que d'un éditeur 
de texte et d'un navigateur Web compatible XML (Chrome ou Firefox). À vous de trouver les 7 erreurs !

1. Ouvrir le fichier FilmProvider_bad.xml dans le navigateur,
noter le message d'erreur, corriger le fichier XML dans l'éditeur et le sauvegarder sous FilmProvider_ok.xml 
dans le dossier "Part1-XML-DTD",
Continuer à corriger en rechargeant la page dans le navigateur jusqu'à ce que le document XML soit affiché correctement.

> fix #1.1 document bien formé

## Exercice XML2 - Écriture d'une DTD

Vous êtes chargé d'écrire la DTD du document FilmProvider.xml, fourni en ressource (maintenant codé en UTF-8, 
comme il est d'usage dans les outils spécialisés). La spécification est la suivante.
Une fiche de film est composée d'un titre, d’un identifiant, et d'un résumé. La fiche mentionne aussi l’année de sortie 
du film et le réalisateur. Le résumé est composé de texte et d’une image optionnelle.
Le réalisateur est caractérisé par son nom et son prénom.
Les fiches de films et de réalisateurs sont stockées dans un même fichier. On ne veut pas dupliquer les informations 
relatives à un même réalisateur. Un document contient au moins une fiche de réalisateur et une fiche de film.

1. Écrire la DTD FilmProvider.dtd correspondant à la spécification et au document XML fournis.
2. Déclarer la DTD dans le fichier FilmProvider.xml et vérifier qu'il s'agit bien d'un document valide (conforme à la DTD). 
Corriger la DTD en cas d'erreur de validation.

> fix #1.2 DTD film provider

## Exercice XML3 - Une Autre DTD

Vous êtes chargé d'écrire la DTD Librairie.dtd d'un catalogue pour une librairie commerciale sur Internet. 
Vous ne disposez que de la spécification suivante :

La librairie contient un en-tête et au moins un livre.  
L'en-tête est un texte libre pouvant contenir aléatoirement certaines balises HTML (l'idée est de pouvoir insérer 
cette description dans une page Web). Les balises autorisées sont *strong*, *em* et *img*. La balise *img* 
peut avoir 2 attributs : 'src' obligatoire et 'title' optionnel.  
Un livre a un titre, un ou des auteurs, une description et un prix. Un livre est obligatoirement associé à un numéro 
ISBN composé de chiffres et de tirets, sans espace.  
Les auteurs sont définis de deux manières possibles exclusives :

- Soit une liste non limitée d'auteurs (au moins un), ayant chacun un nom obligatoire et un prénom optionnel,
- Soit un unique élément <collectif>, contenant 2 sous-éléments <direction> et <membres>. Le premier (direction) est 
semblable à un auteur, avec un nom et un prénom optionnel. Le second (membres) est un texte libre.

La description est semblable à l'en-tête, texte et balises HTML mêlés.  
Le prix contient, outre la valeur d'achat du livre, l'indication de la devise (euro ou livre ou dollar, euro par défaut) 
et du type (HT ou TTC, HT par défaut). On souhaite qu'un attribut 'tva' soit automatiquement fixé à la valeur constante "5.5".  
Les contenus répétés sont fournis sous forme d'entités paramètres. Il s'agit des nom / prénom d'un auteur ou d'un directeur 
de collectif, et du texte mêlé de balises HTML de l'en-tête et de la description.  
On souhaite pour finir disposer d'une entité permettant d'insérer le texte suivant dans l'en-tête : « ©Librairie & Internet 2020 ».

1. Écrire la DTD Librairie.dtd correspondant à la spécification.
2. Ouvrir un nouveau document XML, l'associer à la DTD et peupler la librairie de quelques livres, afin d'expérimenter 
les fonctions d'aide à la saisie fournies par l'éditeur XML.
3. Référencer l'entité copyright dans l'en-tête de la librairie et sauvegarder le document. Corriger les éventuelles 
erreurs de validation signalées par l'éditeur.
4. Ouvrir le fichier sauvegardé dans le navigateur compatible XML. Que constatez-vous ? Comment l'expliquez-vous ?

> fix #1.3 DTD librairie
