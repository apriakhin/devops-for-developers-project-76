ping:
	ansible webservers -i inventory.ini -m ping --ask-vault-pass

install:
	ansible-galaxy install -r requirements.yml

setup:
	ansible-playbook playbook.yml -i inventory.ini --tags setup --ask-vault-pass 

deploy:
	ansible-playbook playbook.yml -i inventory.ini --tags deploy --ask-vault-pass 

monitoring:
	ansible-playbook playbook.yml -i inventory.ini --tags monitoring --ask-vault-pass

vault-encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml

vault-edit:
	ansible-vault edit group_vars/webservers/vault.yml
