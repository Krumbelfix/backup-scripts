#!/bin/bash
restic unlock -r rclone:remote-sw-paris:backuphoppa/backup-docker/ --password-file=/root/.restic/backup-docker.pwd 
restic -r rclone:remote-sw-paris:backuphoppa/backup-docker/ --verbose backup /var/lib/docker/ --password-file=/root/.restic/backup-docker.pwd 