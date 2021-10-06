#!/bin/bash
restic unlock -r rclone:remote-sw-paris:backuphoppa/backup-docker/ --password-file=/root/.restic/backup-docker.pwd 
restic -r rclone:remote-sw-paris:backuphoppa/backup-home/ --verbose backup /home/melchiorreimers/ --password-file=/root/.restic/backup-home.pwd
