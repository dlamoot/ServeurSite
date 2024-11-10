# Utiliser une image de base avec Python 3.9
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de l'application
COPY . .

# Installer les dépendances
RUN python -m venv /opt/venv && \
    . /opt/venv/bin/activate && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

# Exposer le port
EXPOSE 8000

# Démarrer l'application
CMD ["/opt/venv/bin/python", "app.py"]
