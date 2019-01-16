
# docker-talend-mdm-webui
Here is a docker image for Talend MDM user web interface

## Quick reference
### Where to get help
* [Talend.com](https://www.talend.com/resources/introduction-master-data-management-mdm/) - Talend MDM official documentation
* [Getting started](https://akabiblog.wordpress.com/2019/01/14/getting-started-with-talend-mdm/) - Using official Talend MDM demo

## How to use this image
Pulling the docker image
```
$ docker pull jsminet/docker-talend-mdm-webui
```
Start a webUI server instance
```
$ docker run -d -p 8180:8180 jsminet/docker-talend-mdm-webui
```
Then go to the local [Talend MDM web UI welcome page](http://192.168.99.100:8180/talendmdm/auth/login.jsp)
