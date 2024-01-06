require "peppermint/rake/ruby"

desc "limited server configuration (dry run)"
task :limited_server_config_test do
  sh "ansible-playbook --ask-vault-pass --diff --check playbooks/server-limited-config.json " \
  +"--extra-vars '@override_vars.json'
"
end

desc "limited server configuration"
task :limited_server_config do
  sh "ansible-playbook --ask-vault-pass playbooks/server-limited-config.json --extra-vars '@override_vars.json'"
end

desc "server/client configuration (dry run)"
task :server_client_config_test do
  sh "ansible-playbook --ask-vault-pass --diff --check playbooks/server-client-config.json"
end

desc "server/client configuration"
task :server_client_config do
  sh "ansible-playbook --ask-vault-pass playbooks/server-client-config.json"
end

desc "reboot servers (dry run)"
task :reboot_servers_test do
  sh "ansible-playbook --ask-vault-pass --diff --check playbooks/reboot-servers.json"
end

desc "reboot servers"
task :reboot_servers do
  sh "ansible-playbook --ask-vault-pass playbooks/reboot-servers.json"
end
