# docker-kamailio
Kamailio deployment with docker

```
[caio@caio-pc conf]$ docker exec -it dockerkamailio_kamailio_1 bash

root@32fda3c8a6a4:/# kamctl domain add localhost
MySQL password for user 'kamailio@kamailio_database': 
INFO: execute '/usr/sbin/kamctl domain reload' to synchronize cache and database
root@32fda3c8a6a4:/# /usr/sbin/kamctl domain reload
500 command 'domain_reload' not available

root@32fda3c8a6a4:/# kamctl add caio@localhost 123123                                 
MySQL password for user 'kamailio@kamailio_database':
new user 'caio@localhost' added

root@32fda3c8a6a4:/# kamctl add igor@localhost 123123
MySQL password for user 'kamailio@kamailio_database': 
new user 'igor@localhost' added
```

