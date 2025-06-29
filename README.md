# 🕒 Projet : Création de Cron Jobs pour la Sauvegarde Automatique de Bases de Données

## 📌 Contexte

Dans le cadre de la gestion des systèmes d'information, il est essentiel de mettre en place des mécanismes de sauvegarde automatique pour garantir :

- la **disponibilité** des données en cas de panne,
- la **protection** contre les erreurs humaines ou logicielles,
- la **continuité** du service en cas de cyberattaque ou de suppression accidentelle.

Ce projet montre comment automatiser la sauvegarde quotidienne d’une base de données MySQL à l’aide d’un script Bash et de la commande `cron` sous Ubuntu.

---

## 🛠️ Technologies et outils utilisés

- **MySQL (via XAMPP)** : Système de gestion de bases de données relationnelles.
- **Ubuntu** : Environnement Linux pour l’exécution des scripts.
- **Bash** : Langage de script utilisé pour les opérations de sauvegarde.
- **Cron** : Outil de planification des tâches sous Unix/Linux.

---

## 🗃️ Structure de la base de données

Nom de la base : `univ_scolarite`  
Tables principales :
- `etudiants` : informations personnelles des étudiants.
- `cours` : informations sur les cours proposés.
- `inscriptions` : lien entre étudiants et cours.

---

## 📄 Fichiers inclus

| Nom du fichier             | Description |
|---------------------------|-------------|
| `backup_univ.sh`          | Script Bash qui sauvegarde la base de données avec horodatage. |
| `rapport.pdf`   | Rapport complet du projet en format PDF. |


---

## ⚙️ Fonctionnement du script

Le script effectue automatiquement :
1. La création d’un dossier de sauvegarde s’il n'existe pas.
2. L’export de la base de données au format `.sql`.
3. L’ajout de la date et heure dans le nom du fichier.
4. La mise à jour d’un fichier `log` de sauvegarde.

### 🧪 Testé avec succès à :

- 28 juin 2025 à 23h45
- 29 juin 2025 à 23h45 (via changement de l'horloge système)

---

## 🕓 Exemple de tâche cron

```bash
45 23 * * * /home/molemine/backup_univ.sh
