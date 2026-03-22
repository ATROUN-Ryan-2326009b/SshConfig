#!/bin/bash

echo "===== INSTALLATION SSH ====="

apt update -y && apt install -y openssh-server

echo "===== BACKUP CONFIG ====="
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak 2>/dev/null

echo "===== CLEAN CONFIG SSH ====="

cat > /etc/ssh/sshd_config <<EOF
Port 22
Protocol 2

PermitRootLogin yes
PasswordAuthentication yes
PermitEmptyPasswords no

ChallengeResponseAuthentication no
UsePAM yes

X11Forwarding no
PrintMotd no

AcceptEnv LANG LC_*

Subsystem sftp /usr/lib/openssh/sftp-server
EOF

echo "===== FIX PERMISSIONS ====="
mkdir -p /var/run/sshd
chmod 755 /var/run/sshd

echo "===== VERIFICATION CONFIG ====="

/usr/sbin/sshd -t
if [ $? -ne 0 ]; then
    echo "ERROR: SSH config invalid"
    exit 1
fi

echo "===== DETECTION INIT SYSTEM ====="

if command -v systemctl >/dev/null 2>&1; then
    systemctl daemon-reexec
    systemctl enable ssh 2>/dev/null
    systemctl restart ssh
    STATUS=$(systemctl is-active ssh)
else
    service ssh restart
    STATUS=$?
fi

echo "===== STATUS ====="

if [ "$STATUS" = "active" ] || [ "$STATUS" = "0" ]; then
    echo "SSH ACTIVE"
else
    echo "SSH FAILED"
    /usr/sbin/sshd -t
    exit 1
fi

echo "===== DONE ====="
echo "ssh root@IP"
