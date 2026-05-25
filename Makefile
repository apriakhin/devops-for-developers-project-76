ping:
	ansible webservers -i inventory.ini -m ping

install:
	ansible-galaxy install -r requirements.yml

setup:
	ansible-playbook playbook.yml -i inventory.ini

deploy:
	ansible-playbook playbook.yml -i inventory.ini --tags deploy
