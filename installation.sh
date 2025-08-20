#!/bin/bash

if [ -d "deploy" ]; then
    echo "Folder 'deploy' already exists."
else
    wget https://github.com/magefan/magento2-zero-downtime-deploy/archive/refs/heads/master.zip
    unzip master.zip
    rm master.zip
    mv magento2-zero-downtime-deploy-master deploy
    rm deploy/installation.sh
    cp app/etc/env.php deploy/app/env.php
    cp deploy/app/static-content-deploy.sh.sample deploy/app/static-content-deploy.sh

    echo "";
    echo "";
    echo "Edit deploy/app/env.php file to disconnect it from live session and cache."; 
    echo "Edit deploy/app/static-content-deploy.sh to set correct static-deploy commands"
    echo 'To execute deployment, run the command: ./deploy/run'
fi
