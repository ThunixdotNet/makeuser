	currdir=`pwd`
	cd $REPO_LOCATION; git pull
	echo "---
- name: Setting up $1
  user:
    name: $1
    groups: tilde
    state: present
    skeleton: /etc/skel
    shell: /bin/bash
    system: no
    createhome: yes
    home: /home/$1
- authorized_key:
    user: $1
    state: present
    key: \"$3\"" > $REPO_LOCATION/roles/shell/tasks/users/$YAML_FILE

	echo "- include: users/$YAML_FILE" >> $REPO_LOCATION/roles/shell/tasks/users.yml
	git add $REPO_LOCATION/roles/shell/tasks/users/$YAML_FILE
	git commit -am "Adding user $1"
	git push
	cd $currdir
	$GEN_TDP | sudo tee $TILDE_JSON 
