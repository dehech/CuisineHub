# Utilisation d'une image de base avec PHP et Apache
FROM php:8.1.12-apache

# Mise à jour et mise à niveau des packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-client

# Définition du répertoire de travail dans le conteneur
WORKDIR /var/www/html

# Installer le module MySQLi
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli


# Copie des fichiers nécessaires dans le conteneur
COPY . /var/www/html

# Ajout de la directive ServerName dans la configuration d'Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Commande pour exécuter le serveur Apache
CMD ["apache2-foreground"]
