#!/bin/bash

# Session 02 - Identity Crisis Hardening Script
# Author: DesmondHinds94

echo "[*] Starting system hardening..."

# Secure the local Vault
mkdir -p ~/Vault
chmod 700 ~/Vault
echo "[+] Vault secured."

# Audit /etc/shadow
echo "[*] Auditing /etc/shadow..."
ls -l /etc/shadow

# Remediate /etc/shadow permissions
sudo chmod 640 /etc/shadow
sudo chown root:shadow /etc/shadow
echo "[+] /etc/shadow hardened to 640 root:shadow."

echo "[*] Hardening complete."
