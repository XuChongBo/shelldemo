rsync --delete --stats -rt -e 'ssh -p 30630 '  ./  root@192.168.90.40:~/qp-video
#rsync --delete --stats -rt -e 'ssh -p 30630 root@192.168.90.40 -i /data/xucb/.ssh/id_rsa_xcb'  ./  root@192.168.90.40:~/qp-video
