# Boule de poils — Back

Boule de poils est une plateforme d'adoption animale : un catalogue national d'animaux à adopter, qui regroupe les annonces des associations et des refuges, et qui se parcourt d'abord en glissant des cartes. Côté associations, la promesse est de ne rien saisir en double : les annonces déjà publiées ailleurs sont importées, et une annonce saisie ici peut être republiée ailleurs.

Ce dépôt contient l'application Symfony. Elle fournit :

- l'API JSON sous `/api` ;
- les pages publiques indexables (`/animaux`, `/associations`), rendues en Twig ;
- l'administration sous `/admin` ;
- l'import automatique des annonces de La SPA, lancé par des tâches planifiées.

Elle sert aussi, sur le même domaine, la SPA React du dépôt [Boule-de-poils-Front](https://github.com/Francois-Louis/Boule-de-poils-Front). Le build du front est copié dans `public/app/`.

## État du projet

**Refonte en cours.** Le code présent est la version de 2022 (Symfony 5.4), réalisée comme projet de fin d'études, et décrite dans `Mémoire - BDP.pdf`. Il sert seulement de référence : il ne sera pas mis à jour. Un nouveau socle le remplacera, et le code utile y sera porté module par module.

La V1 sort en trois paliers :

1. **Catalogue** : recherche, fiches, swipe et favoris sur l'appareil, espace association, import de La SPA, modération.
2. **Adoptants** : comptes, favoris synchronisés, alertes, demandes d'adoption, messagerie.
3. **Diffusion** : kit Facebook, affiche, liens courts, statistiques.

## Stack cible

| Composant | Version |
| --- | --- |
| PHP | 8.4 |
| Symfony | 7.4 LTS |
| Doctrine ORM | 3.7 |
| MariaDB | celle du serveur o2switch |
| EasyAdmin | 5.6 |
| Messenger | transport Doctrine |
| Tests | PHPUnit |

Hébergement mutualisé o2switch.

Le poste local peut avoir une version de PHP plus récente, mais le code ne doit utiliser aucune fonctionnalité postérieure à PHP 8.4.

## Après le clonage

Activer les hooks Git du dépôt (ils vérifient le format des messages de commit) :

```sh
git config core.hooksPath .githooks
```

Les commandes d'installation, de tests et de lint arriveront avec le nouveau socle (story 1.1).

## Ancienne version (Symfony 5.4)

Si tu veux lancer le code de 2022 en local, pour référence :

```sh
composer install
# créer .env.local avec la connexion à la base :
# DATABASE_URL="mysql://<utilisateur>:<mot de passe>@127.0.0.1:3306/bouledepoils?serverVersion=MariaDB-10.3.32&charset=utf8mb4"
bin/console doctrine:database:create
bin/console doctrine:migrations:migrate
bin/console doctrine:fixtures:load
php -S localhost:8081 -t public
```

Certains fichiers de l'historique Git contiennent des secrets : `.env`, `config/jwt/*.pem`, `public/jwt/`, `public/bdd.sql` et `plainPassword`. Ces secrets sont compromis et ne doivent jamais être réutilisés.

## Contribuer

- Chaque story a sa branche, créée depuis `main` et nommée `<type>/<epic>-<story>-<slug>`, par exemple `feat/1-1-socle-symfony`. Elle arrive dans `main` par une pull request, fusionnée sans squash.
- Les messages de commit suivent [Conventional Commits](https://www.conventionalcommits.org/fr/) : type et portée en anglais, description en français, par exemple `feat(catalogue): ajoute la recherche par distance`.
- Le développement se fait en TDD : pour chaque critère d'acceptation, le test est écrit avant le code.
- Le code est en anglais ; les commentaires et les textes affichés sont en français.

Les règles complètes (sécurité, RGPD, SEO, accessibilité, conventions d'architecture) sont dans [`AGENTS.md`](AGENTS.md).
