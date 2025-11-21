#!/bin/bash

# Fonction Create
create_user() {
    if [ -z "$1" ]; then
        echo "Erreur: Nom d'utilisateur manquant pour la création."
        return 1
    fi
    echo "[CREATE] Utilisateur '$1' a été créé avec succès."
}

# Fonction Update
update_user() {
    if [ -z "$1" ]; then
        echo "Erreur: Nom d'utilisateur manquant pour la mise à jour."
        return 1
    fi
    echo "[UPDATE] Utilisateur '$1' a été mis à jour."
}

# Fonction Delete
delete_user() {
    if [ -z "$1" ]; then
        echo "Erreur: Nom d'utilisateur manquant pour la suppression."
        return 1
    fi
    echo "[DELETE] Utilisateur '$1' a été supprimé."
}

# Logique principale pour appeler les fonctions
case "$1" in
    create)
        create_user "$2"
        ;;
    update)
        update_user "$2"
        ;;
    delete)
        delete_user "$2"
        ;;
    *)
        echo "Usage: $0 {create|update|delete} [username]"
        exit 1
        ;;
