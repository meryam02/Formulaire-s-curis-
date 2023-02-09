## Introduction
Ceci est une application PHP MySQL simple d'inscription et de connexion qui permet aux utilisateurs de créer un compte et de se connecter.

## Prérequis
- PHP
- MySQL

## Installation
- Clonez le répertoire sur votre machine locale
- Ouvrez le fichier config.php et configurez les informations de connexion à la base de données
- Importez le fichier login_db.sql pour créer la base de données

## Utilisation
- Accédez à la page de connexion en ouvrant le fichier login.php dans un navigateur web
- Entrez votre nom d'utilisateur ou adresse email et mot de passe
- Si les informations sont correctes, vous serez connecté à l'application
- Si vous n'avez pas de compte, vous pouvez en créer un en cliquant sur le bouton "Ajouter un compte" sur la page de connexion et en remplissant le formulaire d'inscription.

## Sécurité
- Les mots de passe sont cryptés de manière sécurisée avant d'être stockés dans la base de données
- L'application utilise mysqli_real_escape_string pour prévenir les attaques d'injection SQL
- L'application utilise des déclarations préparées pour prévenir les attaques d'injection SQL

## Contribution
Si vous trouvez des bugs ou avez des suggestions pour des améliorations, n'hésitez pas à ouvrir une demande ou soumettre une pull request.

## Licence
Ce projet est sous licence MIT.
