# My Linux Environment

Ansible playbooks that install config files on Linux hosts.

# Expected Ansible host configuration

`/etc/ansible/hosts` should have groups called `servers` and `clients`, like the
following:

```
[clients]
localhost ansible_connection=local

[servers]
10.0.0.1
10.0.0.2
```

# Playbooks

```
rake limited_server_config       # limited server configuration
rake limited_server_config_test  # limited server configuration (dry run)
rake reboot_servers              # reboot servers
rake reboot_servers_test         # reboot servers (dry run)
rake server_client_config        # server/client configuration
rake server_client_config_test   # server/client configuration (dry run)
```
