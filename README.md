# pushgateway



## Getting started

First Step to push a metric in Prometheus, you must clear the old metrics, for this reason you can call pushgateway_cleaner_instance.sh
and then push your metric with the script that is used for it, like in here 'lxc_down'

## Run Example
If you want pushgateway_cleaner_instance.sh standalone run with two parameters
- [ ] URL of the pushgateway 
- [ ] JOB Name 
```
./pushgateway_cleaner_instance http://172.17.26.2:9091 lxc_down
```
