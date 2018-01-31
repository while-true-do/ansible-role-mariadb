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

You have to set a password for 'wtd_mariadb_root_password'.

```yaml
# defaults/main.yml

# The variables below may be overwritten from /vars/*.yml, depending on your
# distribution and choice of repository.
#
# root_password: You should always set a password!
# 
# repository:
#   - default -> will use the distribution specific repository
#   - repo_mariadb -> will use the official upstream repository
#     there is also a dependency to while-true-do.repo-mariadb
#
# Also some common best practices are applied like innodb tuning, activating query cache and setting default charset to utf8m4
# 
wtd_mariadb_repository: 'default'
wtd_mariadb_packages:
    - 'mariadb-server'
    - 'mariadb'
    - 'MySQL-python'
# Config
wtd_mariadb_root_password: ''
wtd_mariadb_port: '3306'
wtd_mariadb_bind_address: '127.0.0.1'
wtd_mariadb_datadir: '/var/lib/mysql'
wtd_mariadb_socket: '/var/lib/mysql/mysql.sock'
wtd_mariadb_log_error: '/var/log/mariadb/mariadb.log'
wtd_mariadb_pid_file: '/var/run/mariadb/mariadb.pid'
wtd_mariadb_symbolic_links: '0'
wtd_mariadb_character_set: 'utf8mb4'
# Innodb
wtd_mariadb_innodb_large_prefix: 'on'
wtd_mariadb_innodb_file_format: 'barracuda'
wtd_mariadb_innodb_file_per_table: 'true'
wtd_mariadb_innodb_buffer_pool_size: '128M'
# Query Cache
wtd_mariadb_query_cache_type: '1'
wtd_mariadb_query_cache_limit: '256K'
wtd_mariadb_query_cache_min_res_unit: '2k'
wtd_mariadb_query_cache_size: '64M'
```

Below files will be included conditional

```yaml
# vars/CentOS.yml
wtd_mariadb_packages:
  - 'mariadb-server'
  - 'mariadb'
  - 'MySQL-python'
```

```yaml
# vars/RedHat.yml
wtd_mariadb_packages:
  - 'mariadb-server'
  - 'mariadb'
  - 'MySQL-python'
```

```yaml
# vars/repo_mariadb.yml
wtd_mariadb_packages:
  - 'MariaDB-server'
  - 'MariaDB-client'
  - 'MySQL-python'

```

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
