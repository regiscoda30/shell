#!/bin/sh
cd ~
echo -n "veux-tu créer un répertoire pour ton site O/N : ? "
read ouinon
if [ "$ouinon" = "o" ] || [ "$ouinon" = "O" ]; then
	echo "Très bien, commençons"
	echo -n "Dans quel répertoire veux-tu le mettre ?"
ls
	read rep
	cd $rep
	echo -n "Quel nom veux-tu donner à ton dossier ?"
	read nom
	mkdir -p $nom/{script,css,img}
	touch $nom/script/script.js
	touch $nom/css/script.css
	touch $nom/index.html

elif [ "$ouinon" = "n" ] || [ "$ouinon" = "N" ]; then
	echo "A bientôt peut-être."

else echo "Tu te trompes de touche Analphabète!! Pas $ouinon"
fi 