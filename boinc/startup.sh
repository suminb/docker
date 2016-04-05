#!/bin/bash
/etc/init.d/boinc-client start
echo "Wait for a few seconds..." && sleep 5
boinccmd --join_acct_mgr http://bam.boincstats.com $USERNAME $PASSWORD
boinccmd --set_network_mode always
boinccmd --set_run_mode always
boinccmd --set_gpu_mode auto
