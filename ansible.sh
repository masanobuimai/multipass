ansible-galaxy install -r requirements.yml -p roles
ansible-playbook -K -i hosts playbook.yml
