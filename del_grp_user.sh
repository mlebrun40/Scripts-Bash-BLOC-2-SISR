#!/usr/bin/env bash

echo ""
echo "Script de suppression des utilisateurs, groupes et dossiers home"
echo ""
GROUP="smbgroup"

supprimerungrp(){
MEMBERS=$(grep "^${GROUP}:" /etc/group | cut -d: -f4)

if [ -z "$MEMBERS" ]; then
    echo "Le groupe $GROUP est vide ou n'existe pas."
else
    echo "Les membres de $GROUP sont : $MEMBERS"
fi
}
supprimerungrp()