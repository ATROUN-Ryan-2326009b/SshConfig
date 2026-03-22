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
# 🚀 Script d’installation automatique SSH

Projet maintenu par Ryan (Frizz) – BTS SIO SISR

---

## 📌 Description

Ce projet propose un script Bash robuste et universel permettant d’installer, configurer et réparer automatiquement le service SSH sur les systèmes Debian.

Conçu pour un usage réel en administration système, il détecte automatiquement l’environnement (systemd ou sysvinit), corrige les configurations SSH défectueuses et garantit le bon fonctionnement du service sans intervention manuelle.

---

## 🎯 Cas d’usage

Ce script est idéal pour :

- 🖥️ Machines virtuelles (VM)
- 📦 Conteneurs LXC (Proxmox)
- ⚙️ Installations Debian minimalistes
- 🚀 Déploiements automatisés (Ansible, Terraform)
- 🧠 Homelab / FrizzServer

---

## ⚡ Fonctionnalités

- ✅ Installation automatique de OpenSSH
- 🔧 Correction des configurations SSH invalides
- 🔄 Compatibilité systemd et sysvinit
- 🛡️ Vérification automatique avant redémarrage
- 📡 Activation et démarrage du service SSH
- 🧪 Détection et affichage des erreurs
- 🔥 Fonctionne sans aucune modification

---

## 🚀 Utilisation

```bash
chmod +x fix_ssh.sh
./fix_ssh.sh
```

```bash
bash <(curl -s https://raw.githubusercontent.com/ATROUN-Ryan-2326009b/SshConfig/main/fix_ssh.sh)
```
