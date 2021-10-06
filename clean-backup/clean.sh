#!/bin/bash

#docker
restic unlock -r rclone:remote-sw-paris:backuphoppa/backup-docker/ --password-file=/root/.restic/backup-docker.pwd 
restic forget --keep-weekly 52 -r rclone:remote-sw-paris:backuphoppa/backup-docker/ --password-file=/root/.restic/backup-docker.pwd --prune

#home
restic unlock -r rclone:remote-sw-paris:backuphoppa/backup-home/ --password-file=/root/.restic/backup-home.pwd 
restic forget --keep-weekly 52 -r rclone:remote-sw-paris:backuphoppa/backup-home/ --password-file=/root/.restic/backup-home.pwd --prune