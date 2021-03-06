#!/bin/bash
# Return the quota attrs for a given uuid

uuid=$1

q=$(quota --always-resolve -w -u ${uuid} | tail -n1)
quota_blocks=`echo $q | gawk '{print $4}'`
echo "ATTR: quota_blocks=$quota_blocks"
quota_files=`echo $q | gawk '{print $7}'`
echo "ATTR: quota_files=$quota_files"