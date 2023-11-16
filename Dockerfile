FROM node:18-alpine

# Définissez /app comme le répertoire de travail
WORKDIR /app

# Copiez le fichier package.json pour installer les dépendances
COPY ./app/package.json ./
COPY ./app/package-lock.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste des fichiers de l'application
COPY ./app .

EXPOSE 3501

# Commande par défaut pour démarrer l'application
ENTRYPOINT ["npm", "run", "docusaurus", "start", "--", "--host=0.0.0.0", "--port=3501"]
