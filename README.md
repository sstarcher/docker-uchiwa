docker-uchiwa
============

This is a base container for Uchiwa. 

Default configuration allows for local linkage to sensu-api by using docker links.  If you need to reference external servers set the following variables as needed.

```
SENSU_NAME Sensu
SENSU_HOSTNAME sensu
SENSU_PORT 4567
    
UCHIWA_BIND 0.0.0.0
UCHIWA_PORT 3000
UCHIWA_REFRESH 5
```