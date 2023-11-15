FROM node:18-alpine

# Définissez /app comme le répertoire de travail
WORKDIR /app

# Copiez le fichier package.json et package-lock.json pour installer les dépendances
COPY ./app/package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste des fichiers de l'application
COPY ./app .

EXPOSE 3500

# Commande par défaut pour démarrer l'application
CMD ["npm", "run", "docusaurus", "start", "--", "--host=0.0.0.0", "--port=3500"]
