# Ansible Role: MariaDB 
| This role installs and configures MariaDB

## Motivation

Installing MariaDB together with mysql_secure_installation

## Installation
Install from [Ansible Galaxy](https://galaxy.ansible.com/while-true-do.mariadb)

```
ansible-galaxy install while-true-do.mariadb
```

Install from [Github](https://github.com/while-true-do/ansible-role-mariadb)

```
git clone https://github.com/while-true-do/ansible-role-mariadb.git while-true-do.mariadb
```

## Requirements

**Used Modules**

-   [command](http://docs.ansible.com/ansible/latest/command_module.html)
-   [copy](http://docs.ansible.com/ansible/latest/copy_module.html)
-   [mysql_db](http://docs.ansible.com/ansible/latest/mysql_db_module.html)
-   [mysql_user](http://docs.ansible.com/ansible/latest/mysql_user_module.html)
-   [package](http://docs.ansible.com/ansible/latest/package_module.html)
-   [systemd](http://docs.ansible.com/ansible/latest/systemd_module.html)
-   [template](http://docs.ansible.com/ansible/latest/template_module.html)

**Modules requirements**
-   MySQLdb (MySQL-python on CentOS 7)

## Role Variables
CHANGEME
The variable files should be self-explanatary and pasted/linked here.
Explanation should be done **in** the files, if needed.
```yaml
# defaults/main.yml
foo: bar
```

```yaml
# vars/main.yml
bar: foo
```

## Dependencies
CHANGEME
Describe, if other roles are needed and link them here.

Dependency 1:

```
ansible-galaxy install -r requirements.yml
```

- vars

Dependency 2:

- link
- install
- vars

## Example Playbook
CHANGEME
Simple Example:

```yaml
- hosts: servers 
  roles:
    - { role: while-true-do.CHANGEME }
```

Advanced Example:

```yaml
- hosts: servers 
  roles:
    - { role: while-true-do.CHANGEME, foo: bar, bar: foo }
```

## Testing
CHANGEME
Describe, how the role can be tested.
All tests should be put in [test directory](./tests/).

## Contribute / Bugs

Thank you so much for considering to contribute. Every contribution helps us.
We are really happy, when somebody is joining the hard work. Please have a look 
at the links first.

-   [Contribution Guidelines](./docs/CONTRIBUTING.md)
-   [Create an issue or Request](https://github.com/while-true-do/CHANGEME/issues)
-   [See who was contributing already](https://github.com/while-true-do/CHANGEME/graphs/contributors)

## License
This work is licensed under a [BSD License](https://opensource.org/licenses/BSD-3-Clause).

## Author Information

Blog: [blog.while-true-do.org](https://blog.while-true-do.org)

Mail: [hello@while-true-do.org](mailto:hello@while-true-do.org)
