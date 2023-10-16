# My Linux Environment

Ansible playbooks that install config files on Linux hosts.

# Expected `/etc/ansible/hosts`

Groups called `servers` and `clients`.

# Playbooks

| Filename                    | Description                 |
| --------------------------- | --------------------------- |
| `reboot-servers.json`       | Reboot all servers.         |
| `server-client-config.json` | Set up servers and clients. |
