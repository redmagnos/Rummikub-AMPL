Le code est divisé en deux parties : rummi et jeu.

--Rummi--
La partie rummi est le modèle brut. Le fichier rummi.model contient les paramètres, les variables, la fonction économique et les contraintes. Le fichier rummi.data contient les détails des paramètres:

NB_MUL est la multiplicité du jeu (la quantité de chaque type de carte). Il doit être supérieur ou égal à 1. Un jeu normal de Rummikub a NB_MUL = 2.
NB_NUM est le nombre de numéros en jeu. Il doit être supérieur ou égal à 3. Un jeu normal de Rummikub a NB_NUM = 13.
NB_COUL est le nombre de couleurs du jeu. Il doit être supérieur ou égal à 3. Un jeu normal de Rummikub a NB_COUL = 4.
cout est un vecteur du coût de chaque numéro, de taille NB_NUM. En un jeu normal de Rummikub, chaque numéro est son propre valeur (par exemple, le numéro 10 a coût 10).
coutjo est le coût du joker.
carte_table_joker est le nombre de jokers en table avant le tour.
carte_main_joker est le nombre de jokers en main avant le tour.
carte_table est une table qui dit la quantité de chaque carte sur la table. Les colonnes sont les couleurs, les lignes sont les numéros, et chaque membre de la table ne doit être plus grand que NB_MUL.
carte_main est exactement la même chose, mais pour décrire la main du joueur avant le tour.

Le fichier rummi.run résoudre le programme lineaire et appelle le fichier print.command qui montre à l'utilisateur la disposition de la table et de la main. Pour tester le modèle, la commande ampl rummi.run doit être utilisée.

--Jeu--
La partie jeu est une simulation d'un jeu de Rummikub d'un seul joueur. Les fichiers sont presque les mêmes, avec quelques petites différences. Le fichier jeu.data n'a plus les paramètres pour décrire la table et la main parce qu'elles doivent commencer vides, mais il a le paramètre hand_size, qui indique le nombre de cartes dans la main initiale du joueur.

Le fichier jeu.run initialise la main du joueur en appellant le fichier piocher.command pour commencer, et joue jusqu'à quand il a placé tous les cartes de sa main sur la table. Le fichier update.command est appelé pour mettre l'état de la table et de la main à jour après chaque tour. Pour lancer le jeu la commande ampl jeu.run doit être utilisée.