#!/bin/bash

# Définition des utilisateurs Git
USER_NAME_PERSO="perso-username"
USER_NAME_WORK="work-username"
USER_EMAIL_PERSO="perso-email"
USER_EMAIL_WORK="work-email"

# Vérification de l'utilisateur actuel
CURRENT_USER=$(git config --global user.name)

# Vérification de l'utilisateur à utiliser
if [ "$CURRENT_USER" = "$USER_NAME_PERSO" ]; then
    SWITCH_USER_NAME="$USER_NAME_WORK"
    SWITCH_USER_EMAIL="$USER_EMAIL_WORK"
else
    SWITCH_USER_NAME="$USER_NAME_PERSO"
    SWITCH_USER_EMAIL="$USER_EMAIL_PERSO"
fi

# Configuration de l'utilisateur Git
git config --global user.name "$SWITCH_USER_NAME"
git config --global user.email "$SWITCH_USER_EMAIL"

# Affichage du changement d'utilisateur
echo "Utilisateur Git modifié. Nouvel utilisateur : $SWITCH_USER_NAME"
