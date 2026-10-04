<!-- bmad:context -->
<!-- Verified 2026-10-04 against 88416d9. Managed by bmad-project-context; edits inside this block are replaced on refresh. Keep anything you want preserved outside the markers. -->

## Boule-de-poils-Back

Application Symfony 7.4 LTS (PHP 8.4, MariaDB, Doctrine, Messenger sur transport Doctrine, EasyAdmin) : API JSON `/api`, pages publiques Twig, administration `/admin`, imports de Sources par cron. Elle sert aussi la SPA de `Boule-de-poils-Front`, dont le build est copié dans `public/app/`. Planification dans `../_bmad-output/planning-artifacts/`. Le code présent (Symfony 5.4) est l'ancienne version, remplacée par la story 1.1.

## Policy

### Git
- Ne jamais committer ni pousser sur `main` (protégée sur GitHub, PR obligatoire) : une branche par story, partie de `main`, nommée `<type>/<epic>-<story>-<slug-court>` en ASCII (`feat/1-1-socle-symfony`).
- Commits Conventional Commits : type et portée en anglais, description en français au présent, pied `Story: 1.11` (`feat(catalogue): ajoute la recherche par distance`). Portée = module (`catalogue`, `sourcing`…), ou `deps`, `ci`, `deploy`.
- Les PR ne sont jamais squashées : chaque commit est atomique et passe les tests ; aucun commit « wip ».
- Pousser sa branche et ouvrir la PR avec `gh pr create` (titre au format Conventional Commits, corps : story, critères couverts, comment tester) ; ne jamais merger, ne jamais `--no-verify`, `--force-with-lease` sur sa propre branche seulement.
- Aucune trace d'IA dans les commits, les PR, le code ni les commentaires : pas de trailer `Co-authored-by` d'un assistant, pas de « Generated with… » ; ne pas modifier l'identité Git configurée.

### TDD
- Pour chaque critère d'acceptation : écrire le test, le voir échouer pour la bonne raison, écrire le code minimal, refactorer tests verts. Aucun code de production sans test qui l'exige ; un bug se corrige en commençant par un test qui le reproduit.
- Tests imposés : isolation à deux Associations pour chaque endpoint `/api/association/me/...` (AD-4) ; classement de toute nouvelle route `app_api_*` dans le test d'inventaire ; absence de donnée personnelle pour chaque endpoint public (AD-9) ; suite de contrat pour chaque connecteur de Source (AD-7).

### Sécurité
- Ne jamais versionner un secret : `.env` n'a que des valeurs factices, les vraies vont dans `.env.local`. Ce qui est déjà dans l'historique (`.env`, `config/jwt/*.pem`, `public/jwt/`, `public/bdd.sql`, `plainPassword`) est compromis : ne jamais le réutiliser, le copier ni le restaurer.
- Refus par défaut : toute route `/api` hors liste blanche publique exige un rôle ; accès à un objet par Voter relisant l'appartenance en base ; l'Association vient de la session, jamais du corps de la requête ni de l'URL.
- Ne jamais désactiver le CSRF (`X-CSRF-Token` sur toute mutation connectée) ni ajouter CORS ou JWT ; une mutation anonyme n'entre dans la liste fermée (stat, Signalement, discover) qu'avec vérification d'origine et limite de débit.
- Entrées par DTO validés, sorties par vues explicites par audience ; ne jamais sérialiser une entité. Fichiers téléversés contrôlés côté serveur (type, poids, dimensions).
- Toute nouvelle dépendance passe `composer audit` sans faille critique ni élevée.

### RGPD
- Aucune donnée personnelle dans les journaux, les Statistiques (ni IP, ni cookie, ni identifiant) ni les réponses publiques ; la position d'un utilisateur est ramenée à la commune, jamais stockée.
- Toute nouvelle donnée personnelle entre dans l'export, dans `EraseAccount` et, si elle a une durée de conservation, dans `app:privacy:purge` (AD-24) ; les durées vont dans `config/packages/app.yaml`.

### SEO
- Toute page publique (`/animaux`, `/animaux/<id>-<slug>`, `/associations`, `/associations/<slug>`) est rendue en Twig via `ListingReadService`, avec title, description, Open Graph, JSON-LD, canonical et robots ; jamais de contenu indexable présent seulement dans la SPA.
- Slug changé → 301, Fiche retirée → 410, inexistante → 404 ; Fiche importée → `noindex` et canonique vers l'annonce d'origine ; aperçus Membre et Admin → `noindex` ; le plan du site ne liste que l'indexable.

### Accessibilité
- Pages Twig et e-mails : `lang="fr"`, un seul `h1`, CSS critique issu du thème du front, mêmes exigences RGAA 4.1 / WCAG 2.2 AA que la SPA (`EXPERIENCE.md`).

## Where things are

- Nouveau code (créé par la story 1.1) : `src/<Module>/{Controller,Application,Domain,Infrastructure}/` ; propriété des entités par module : AD-15.
- Paramètres métier : `config/packages/app.yaml` ; tâches planifiées : `deploy/crontab.<env>` ; tests : `tests/{Unit,Functional,Contract}/`.

## Running and verifying

- TODO story 1.1 : commandes PHPUnit (base de test MariaDB), contrôle des couches (deptrac ou PHPArkitect) et lint, à vérifier et inscrire ici.
- Avant chaque commit : tests, contrôle des couches et `composer audit` au vert.
- PHP 8.4 (repli 8.3) en production, mais le poste local a PHP 8.5 : aucune fonctionnalité postérieure à 8.4, et `config.platform.php` fixé à 8.4 dans `composer.json`. Dans les crontabs, appeler le binaire PHP par son chemin explicite, jamais `php` du PATH (o2switch).
- Un changement du contrat d'API se fait d'abord ici (OpenAPI), puis les types du Front sont régénérés ; le déploiement refuse un front dont le condensat de contrat diffère.
- Activer les hooks versionnés après chaque clone : `git config core.hooksPath .githooks`.

## Conventions that differ from defaults

- Code, base et API en anglais ; commentaires et textes affichés en français.
- Seuls les services d'application écrivent ; `Animal`, `Photo` et `AnimalHold` ne s'écrivent que par `Catalogue\Application\AnimalService`. Ne jamais appeler le repository d'un autre module : passer par son service d'application ou ses événements.
- Le Domaine ne dépend ni de l'Infrastructure ni de la Présentation. Les effets inter-modules passent par des événements livrés après commit (Messenger), jamais dans la requête.
- États en enums, changés seulement par les méthodes du domaine ; « masquée » est une Fiche publiée portant une `AnimalHold`, pas un statut.
- Lecture publique des Animaux uniquement par `ListingReadService` et le prédicat `PubliclyVisible`.
- EasyAdmin : pas de `new`/`edit`/`delete` natifs sur les entités à transitions ; actions personnalisées avec motif, qui appellent les services d'application.
- Seuils, délais et durées dans `app.yaml`, jamais en dur. Erreurs : exceptions de domaine typées traduites en problem+json par l'`ExceptionListener` unique.
- Pas de reprise de `bdd.sql` : migrations Doctrine ; fixtures en local et en test seulement.

## Known pitfalls

- Ancien code 5.4 : ne pas le modifier ni le monter de version ; le porter module par module. Ses défauts ne reviennent pas : mot de passe en clair à l'édition, inscription sans validation serveur, upload sans contrôle (AR-34).
- Des `dump()` et `dd()` ont déjà dû être retirés avant une mise en prod : n'en committer aucun.
- Les clés de story de `sprint-status.yaml` ont des accents : ne pas les reprendre telles quelles comme noms de branche.

<!-- /bmad:context -->
