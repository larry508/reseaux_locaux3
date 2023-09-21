# Utilisez l'image Ubuntu 20.04 comme image de base
FROM ubuntu:latest

# Mettez à jour les packages et installez les paquets requis
RUN apt-get update && apt-get install -y \
    vim \
    lynx \
    gimp \
    nginx

# Démarrez le serveur Nginx lors du démarrage du conteneur
CMD ["nginx", "-g", "daemon off;"]

# Exposez le port 80 pour le serveur web Nginx
EXPOSE 80

