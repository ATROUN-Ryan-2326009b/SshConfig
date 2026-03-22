Ce projet propose un script Bash robuste et universel permettant d’installer, configurer et réparer automatiquement le service SSH sur les systèmes Debian.

Conçu pour un usage réel en administration système, il détecte automatiquement l’environnement (systemd ou sysvinit), corrige les configurations SSH défectueuses et garantit le bon fonctionnement du service sans intervention manuelle.

Idéal pour :
- Conteneurs LXC (Proxmox)
- Machines virtuelles
- Installations Debian minimalistes
- Automatisation (Ansible, Terraform)

Fonctionnalités principales :
- Installation automatique de OpenSSH
- Correction des configurations SSH invalides
- Compatibilité avec systemd et environnements sans systemd
- Vérification de la configuration avant redémarrage
- Fonctionne immédiatement sans modification

Ce script s’inscrit dans une démarche d’automatisation et d’industrialisation des déploiements systèmes.
