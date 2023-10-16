require "peppermint/rake/ruby"

desc "server/client configuration (dry run)"
task :server_client_config_test do
  sh "ansible-playbook -K --diff --check playbooks/server-client-config.json"
end

desc "server/client configuration"
task :server_client_config do
  sh "ansible-playbook -K playbooks/server-client-config.json"
end

desc "reboot servers (dry run)"
task :reboot_servers_test do
  sh "ansible-playbook -K --diff --check playbooks/reboot-servers.json"
end

desc "reboot servers"
task :reboot_servers do
  sh "ansible-playbook -K playbooks/reboot-servers.json"
end
