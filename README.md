## How was this site created? 


### Read the Makefile first.
These instructions are for Mac OS x only. But you can change these to whatever else you happen to be running.

### Incase you don't have kubectl installed
```
make installs
```

### Replace YOUR_GCP_PROJET_ID in the Makefile to your project id in gcp
```
make setup_project
```

### Now create kubernetes cluster
```
make k8s_cluster
```

### Now create volumes for persistance
```
make volumes
```

### set a password for mysql by editing YOURPASSWORD to the password you want in Makefile and then run 
```
make mysql_password
```

### Create a mysql pod
```
make mysql
```

### Create wordpress pod and expose it using a service.
```
make wordpress
```

### ONLY if you want to get rid of this site. Carefull!
```
make delete_all
```
# wordpress
