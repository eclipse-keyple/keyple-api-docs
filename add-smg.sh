#!/bin/bash

# Liste des projets keyple
projets=(
    "keyple-calypso-crypto-asymmetric-java-api"
)

# Boucle sur la liste des projets
for projet in "${projets[@]}"; do
    # Affiche la commande qui va être exécutée
    echo "Ajout du sous-module : $projet"

    # Exécute la commande git submodule add
    git submodule add -b gh-pages https://github.com/eclipse-keyple/$projet.git $projet
done

# Met à jour les sous-modules
git submodule update --init --recursive