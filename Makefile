list:
	@grep -Eo '^[[:alpha:]][^:]+' Makefile | sort

fmt:
	find . -type f -name '*.json' -o -name '*.md' | xargs deno fmt

server-client-config-test:
	ansible-playbook -K --diff --check playbooks/server-client-config.json

server-client-config:
	ansible-playbook -K playbooks/server-client-config.json

server-update-test:
	ansible-playbook -K --diff --check playbooks/server-update.json

server-update:
	ansible-playbook -K playbooks/server-update.json

reboot-servers-test:
	ansible-playbook -K --diff --check playbooks/reboot-servers.json

reboot-servers:
	ansible-playbook -K playbooks/reboot-servers.json


.PHONY: fmt list test
