#!/bin/bash

# === Parametres de la sauvegarde ===
UTILISATEUR="root"                         # Nom d'utilisateur MySQL
MOTDEPASSE=""                              # Mot de passe MySQL vide par défaut
HOTE="localhost"                           # Adresse du serveur MySQL
BASE="univ_scolarite"                      # Nom de la base de données à sauvegarder

# === Dossier où les fichiers seront sauvegardés ===
DOSSIER_SAUVEGARDE="/home/molemine/mysql_backups"

# === Créer le dossier s’il n’existe pas ===
mkdir -p "$DOSSIER_SAUVEGARDE"

# === Générer un nom de fichier basé sur la date actuelle ===
DATE=$(date +\%Y-\%m-\%d_\%Hh\%Mm)
FICHIER="$DOSSIER_SAUVEGARDE/${BASE}_$DATE.sql"

# === Exécuter la commande de sauvegarde avec mysqldump ===
/opt/lampp/bin/mysqldump -u $UTILISATEUR -h $HOTE $BASE > "$FICHIER"

# === Enregistrer un message dans un fichier log ===
if [ $? -eq 0 ]; then
    echo "[$(date)]  Sauvegarde réussie : $FICHIER" >> "$DOSSIER_SAUVEGARDE/backup.log"
else
    echo "[$(date)] Échec de la sauvegarde." >> "$DOSSIER_SAUVEGARDE/backup.log"
fi
