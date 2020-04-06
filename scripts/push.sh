#!/usr/bin/env bash

lftp -u $FTP_USERNAME,$FTP_PASSWORD -e "set sftp:auto-confirm yes; put testbed.qcow2; exit;" sftp://$FTP_HOSTNAME
lftp -u $FTP_USERNAME,$FTP_PASSWORD -e "set sftp:auto-confirm yes; put testbed.qcow2 -o testbed-$(date +%Y-%m).qcow2; exit;" sftp://$FTP_HOSTNAME
