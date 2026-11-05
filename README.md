# TD3 : classification de documents (20 Newsgroups)

## Le projet

Notebook du TD3 de fouille de données : classification de textes avec
TF-IDF et plusieurs classifieurs (Naive Bayes, régression logistique, SVM,
k plus proches voisins, arbre de décision, forêt aléatoire), réduction de
dimension (LSA) et validation croisée.

## Lancer le projet avec Docker

Il suffit d'avoir **Docker** installé. Python, les bibliothèques et les
données sont déjà dans l'image : rien d'autre à installer.

```bash
git clone https://github.com/kossi-ctrl/tp3_data-mining.git
cd tp3_data-mining
docker compose up --build
```

Puis ouvrir dans le navigateur : **http://localhost:18888**

Le notebook s'ouvre directement. Pour tout exécuter :
menu **Run → Run All Cells**.

La première construction prend quelques minutes. Les lancements suivants
sont presque immédiats.

## Arrêter

Dans le terminal : **Ctrl + C**, puis :

```bash
docker compose down
```

## Contenu du dépôt

```
tp3_data-mining/
├── plot_document_classification_20newsgroups.ipynb   # le notebook du TD3
├── fig7-comparaison-classifieurs.png                 # figure : comparaison des classifieurs
├── fig8-confusion-naive-bayes.png                    # figure : matrice de confusion
├── Dockerfile                                        # la recette de l'image Docker
├── docker-compose.yml                                # le lancement en une commande
├── requirements.txt                                  # les bibliothèques Python et leurs versions
├── telecharger_donnees.py                            # télécharge les données pendant la construction
├── README.md                                         # cette notice
├── .dockerignore                                     # fichiers que Docker ne copie pas
└── .gitignore                                        # fichiers que Git n'envoie pas
```

## En cas de besoin

**Vous avez modifié le notebook et voulez garder vos changements ?**
Avant d'arrêter Docker, cliquez sur **File → Download**.
Sinon, vos changements seront perdus.

**La page http://localhost:18888 ne s'ouvre pas ?**
Le numéro 18888 est peut-être déjà utilisé sur votre ordinateur.

1. Arrêtez Docker : **Ctrl + C**, puis `docker compose down`.
2. Ouvrez le fichier `docker-compose.yml`.
3. Remplacez `18888` par `18889`, puis enregistrez.
4. Relancez : `docker compose up`.
5. Ouvrez **http://localhost:18889**.

**Pas de mot de passe ?** C'est normal. Le notebook n'est visible que
sur votre ordinateur.

## Auteurs

- **Kokou DOKANU**
- **Kossi ZANGBE**

Master Humanités Numériques, Ingénierie des Données
Centre d'Études Supérieures de la Renaissance (CESR), Université de Tours
Novembre 2026
