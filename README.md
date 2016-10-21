docker-uchiwa
============

This is a base container for Uchiwa. 

Default configuration allows for local linkage to sensu-api by using docker links.  If you need to reference external servers set the following variables as needed.

* Additional configuration files can be placed in ```/etc/sensu/dashboard.d```

```    
UCHIWA_BIND 0.0.0.0
UCHIWA_SERVICE_PORT 3000
UCHIWA_REFRESH 10
UCHIWA_LOG_LEVEL info

Optional:
SENSU_DC_NAME
SENSU_HOSTNAME
SENSU_SERVICE_PORT 4567
```

* Check data is pulled from the Sensu API.  Checks will only show up in Uchiwa if they are locally on the machine running the Sensu API.
