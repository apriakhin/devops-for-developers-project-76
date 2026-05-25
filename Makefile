ping:
	ansible webservers -i inventory.ini -m ping

install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook playbook.yml -i inventory.ini
