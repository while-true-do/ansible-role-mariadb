#!/bin/sh
/bin/mysql -u root
if [ $? -eq 0 ]; then
echo "0"
fi
