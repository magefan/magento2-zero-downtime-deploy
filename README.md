# Magento 2 Zero Downtime deploy


## Installation
1. Download and unzip archive
2. The files to deploy folder in Magento 2 root directory
3. Rename deploy/app/static-content-deploy.sh.sample to deploy/app/static-content-deploy.sh and define static-content commands depending on your project
4. Copy file app/etc/env.php to deploy/app/env.php, if you use redis or other custom software for session or cache, then change this config to setup default save in files cache and session optoins.
5. Run command
`chmod +x deploy/run`

## How to use?

Run command

`deploy/run [--all] [--upgrade] [--di] [--static-content]`

or

`deploy/run [-a] [-u] [-d] [-s]`