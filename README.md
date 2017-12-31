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
-   [mysql_db](http://docs.ansible.com/ansible/latest/mysql_db_module.html)
-   [mysql_user](http://docs.ansible.com/ansible/latest/mysql_user_module.html)
-   [package](http://docs.ansible.com/ansible/latest/package_module.html)
-   [service](http://docs.ansible.com/ansible/latest/service_module.html)
-   [template](http://docs.ansible.com/ansible/latest/template_module.html)

**Modules requirements**
-   MySQLdb (MySQL-python on CentOS 7)

## Role Variables

```yaml
# defaults/main.yml
wtd_mariadb_packages: []

wtd_mariadb_default_packages:
  - "mariadb"
  - "mariadb-server"

wtd_mariadb_default_repo_packages:
  - "MariaDB-client"
  - "MariaDB-server"

wtd_mariadb_default_repo_dependent_packages:
  - "MariaDB-common"
  - "MariaDB-shared"

wtd_mariadb_service: "mariadb"

wtd_mariadb_root_password: ''

wtd_mariadb_port: '3306'
wtd_mariadb_bind_address: '0.0.0.0'

wtd_mariadb_innodb_buffer_pool_size: '134217728' # 128MB
wtd_mariadb_innodb_lru_scan_depth: '1024'
```

You have to generate a password for 'wtd_mariadb_root_password'.

## Dependencies

This role depends on <https://galaxy.ansible.com/while-true-do/repo-mariadb>. You have to install the role:

```
ansible-galaxy install -r requirements.yml
```

## Example Playbook
Simple Example:

```yaml
- hosts: servers 
  roles:
    - { role: while-true-do.mariadb, wtd_mariadb_root_password: 'PASSWORD' }
```

## Testing
All tests should be put in [test directory](./tests/).

## Contribute / Bugs

Thank you so much for considering to contribute. Every contribution helps us.
We are really happy, when somebody is joining the hard work. Please have a look 
at the links first.

-   [Contribution Guidelines](./docs/CONTRIBUTING.md)
-   [Create an issue or Request](https://github.com/while-true-do/ansible-role-mariadb/issues)
-   [See who was contributing already](https://github.com/while-true-do/ansible-role-mariadb/graphs/contributors)

## License
This work is licensed under a [BSD License](https://opensource.org/licenses/BSD-3-Clause).

## Author Information

Blog: [blog.while-true-do.org](https://blog.while-true-do.org)

Mail: [hello@while-true-do.org](mailto:hello@while-true-do.org)
