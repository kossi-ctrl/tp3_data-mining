"""Télécharge les données 20 Newsgroups pendant la construction de l'image Docker.

Les données sont gardées dans ~/scikit_learn_data : le notebook les retrouve
ensuite sans rien télécharger.
"""
from sklearn.datasets import fetch_20newsgroups

# Les quatre sujets utilisés dans le TD3
CATEGORIES = [
    "alt.atheism",
    "talk.religion.misc",
    "comp.graphics",
    "sci.space",
]

for partie in ("train", "test"):
    donnees = fetch_20newsgroups(subset=partie, categories=CATEGORIES)
    print(f"{partie} : {len(donnees.data)} documents téléchargés")
