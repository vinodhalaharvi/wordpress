## How was this site created? 
Clone the project

```
git clone https://github.com/vinodhalaharvi/wordpress.git
```

### Read the Makefile first.
These instructions are for Mac OS x only. But you can change these to whatever else you happen to be running. If gcloud is not installed then install if first. [https://cloud.google.com/sdk/downloads]. Incase you don't have kubectl installed, run installs.
```
make installs
```

Replace YOUR_GCP_PROJET_ID in the Makefile to your project id in gcp
```
make setup_project
```

Now create kubernetes cluster
```
make k8s_cluster
```

Now create volumes for persistance
```
make volumes
```

Set a password for mysql by editing YOUR_PASSWORD to the password you want in Makefile and then run 
```
make mysql_password
```

Create a mysql pod
```
make mysql
```

Create wordpress pod and expose it using a service.
```
make wordpress
```

ONLY if you want to get rid of this site. Carefull!
```
make delete_all
```
