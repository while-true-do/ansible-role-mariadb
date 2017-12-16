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
CHANGEME
Special Packages, please inspect used modules to list the requirements here.
Please list all modules:

**Used Modules**

-   [module1](link)
-   [module2](link)

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
CHANGEME
This work is licensed under a [BSD License](https://opensource.org/licenses/BSD-3-Clause).
This work is licensed under [CC-BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/), a Creative Commons License.

## Author Information

Blog: [blog.while-true-do.org](https://blog.while-true-do.org)

Mail: [hello@while-true-do.org](mailto:hello@while-true-do.org)
