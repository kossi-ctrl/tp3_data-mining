# 1. Point de départ : un Linux léger avec Python 3.11 déjà installé
FROM python:3.11-slim

# 2. Réglages de Python : pas de fichiers .pyc, affichage immédiat des messages
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

# 3. Un utilisateur normal (pas administrateur), pour plus de sécurité
RUN useradd --create-home --shell /bin/bash kossi

# 4. Le dossier de travail dans le conteneur
WORKDIR /home/kossi/td3

# 5. Installer les bibliothèques
COPY requirements.txt .
RUN pip install -r requirements.txt

# 6. Télécharger les données, en tant que kossi
COPY telecharger_donnees.py .
USER kossi
RUN python telecharger_donnees.py

# 7. Copier le reste du projet (notebook, figures)
COPY --chown=kossi:kossi . .

# 8. Le port de Jupyter
EXPOSE 8888

# 9. Ce qui se lance au démarrage du conteneur : Jupyter Lab, notebook ouvert
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", \
     "--ServerApp.token=", "--ServerApp.password=", \
     "--ServerApp.default_url=/lab/tree/plot_document_classification_20newsgroups.ipynb"]
