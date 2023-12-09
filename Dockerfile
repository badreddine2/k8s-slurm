# Utilisez une image de base Linux
FROM ubuntu:latest

# Installez les dépendances nécessaires
RUN apt-get update && \
    apt-get install -y slurm-wlm munge

# Exposez les ports nécessaires pour Slurmctld, si nécessaire
# EXPOSE ...

# Copiez les fichiers de configuration Slurmctld et Munge (assurez-vous d'avoir ces fichiers)
COPY slurm.conf /etc/slurm/slurm.conf
COPY munge.key /etc/munge/munge.key

# Commande de démarrage (vous pouvez ajuster cela en fonction de votre configuration)
CMD ["slurmctld"]

