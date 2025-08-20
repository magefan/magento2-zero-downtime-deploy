#!/bin/bash

if [ -d "deploy" ]; then
    echo "Folder 'deploy' already exists."
else
    wget -O deploy.zip https://github.com/magefan/magento2-zero-downtime-deploy/archive/refs/heads/master.zip
    unzip deploy.zip
    rm -f deploy.zip
    mv magento2-zero-downtime-deploy-master deploy
    cp deploy/app/static-content-deploy.sh.sample deploy/app/static-content-deploy.sh
    cp app/etc/env.php deploy/app/env.php
    echo $'\n'deploy/app/env.php >> .gitignore
    chmod +x deploy/run
    rm deploy/installation.sh
    rm zdd_installation.sh

    echo "";
    echo "";
    echo "Configuration user guide: https://magefan.com/blog/magento-2-zero-downtime-deployment#configuration"; 
    echo 'To execute deployment, run the command: ./deploy/run'
fi
