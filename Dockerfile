FROM php:8.2-fpm

LABEL name="ilian IGOUDJIL<ilianigoudjil@gmail.com>"

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN apt-get install -y curl

# Crée un dossier courant "app"
WORKDIR /app
# Copie le fichier "index.js" présent dans le dossier courant pour le mettre dans le dossier courant "app" de l'image créée
COPY ./index.js ./index.js

# Lance la command "node index.js" dans le terminal (si on lance: "docker run -it exercice /bin/bash" ça va ignorer la command il faut lancer: "docker run exercice")
# CMD node index.js

# Va afficher un utilisateur aléatoire lors du lancement du container ("docker run exercice2" après avoir build le container grâce à: "docker build -t exercice2 ." en étant dans le dossier courant du Dockerfile)
CMD curl https://randomuser.me/api/