# Oh Terroir

Refonte du site ohterroir-orleans.fr.

## Objectif pédagogique

Projet fictif, réalisé pour la Wild Code School d'Orléans, afin
de mettre en pratique les différentes notions vues pendant le 2ème mois de la formation :
* Architecture MVC
* Composer, POO, Twig
* Méthode Scrum / Agile

* Durée du projet : 5 semaines

![Oh Terroir](https://drive.google.com/uc?export=view&id=1jfyHSQEG9bvdQh7m40Wqk7xGQ6wBJKwi)

## Installation

1. Cloner le dépôt GitHub.
2. Taper la commande `composer install`.
3. Créer *app/db.php* à partir de *app/db.php.dist* et ajouter les paramètres de votre base.
```php
define('APP_DB_HOST', 'your_db_host');
define('APP_DB_NAME', 'your_db_name');
define('APP_DB_USER', 'your_db_user_wich_is_not_root');
define('APP_DB_PWD', 'your_db_password');
```
4. Créer une nouvelle base sur le serveur local et importer le fichier `data/201810-oh-terroir.sql`.
5. Lancer votre serveur local `php -S localhost:8000 -t public/`.
6. Lancer [http://localhost:8000/](http://localhost:8000/), depuis votre navigateur.

### Langages
* HTML 5
* CSS 3
* Bootstrap 4
* PHP 7

### Méthodologie
* Scrum / Agile : sprint planning, daily project, backlog de produit, users stories.

### Versionning
* Git

### Réalisé avec
* PhpStorm
 
#### Contributeurs

* Hélène Bloch - [ln-45](https://github.com/ln-45)
* Antony Jonas - [accuratecopy](https://github.com/accuratecopy)
* Amadou Kane - [amadrocky](https://github.com/amadrocky)
* Amandine Turpin - [Amandine1345](https://github.com/Amandine1345)
* Lucile Varloteaux - [Luluribe45](https://github.com/Luluribe45)