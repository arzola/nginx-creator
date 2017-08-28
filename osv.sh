#!/bin/bash
php osvhost $1 $2 $3
if ps auxw | grep -v grep | grep nginx >/dev/null
    then
    echo "Reloading nginx...";
    sudo nginx -s reload
    else
    echo "Starging nginx...";
    sudo nginx
fi