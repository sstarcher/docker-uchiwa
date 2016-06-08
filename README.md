docker-uchiwa
============

This is a base container for Uchiwa. 

Default configuration allows for local linkage to sensu-api by using docker links.  If you need to reference external servers set the following variables as needed.

* Additional configuration files can be placed in ```/etc/sensu/dashboard.d```

```    
UCHIWA_BIND 0.0.0.0
UCHIWA_PORT 3000
UCHIWA_REFRESH 10
UCHIWA_LOG_LEVEL info

Optional:
SENSU_DC_NAME
SENSU_HOSTNAME
SENSU_PORT 4567
```
