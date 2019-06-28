# makeuser

A script that allows admins of thunix to make user accounts easily.

Forked from tilde.team's makeuser repo.

``makeuser {username} {email} {ssh key}

# rmuser

This tool archives the user's home dir, and removes the system account.  It is assume that beforehand, the user is un-enforced in ansible.

``rmuser {username}

# makedb

Upon request, this tool provisions a database for users on the system MySQL/MariaDB instance.

``makedb {username}

# dbremove

Removes user dbs.

``dbremove {username} 
