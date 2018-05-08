# Introduction

This container runs FTP proxy. It is configurable using a `ftp-proxy.conf` file. The file must be placed inside of the `/etc/proxy-suite` folder. For the content of the file, please ref: http://manpages.ubuntu.com/manpages/bionic/man5/ftp-proxy.conf.5.html

Create your container like in
```
docker run \
  --name ftp-proxy \
  -d \
  -v $(pwd)/ftp-proxy/:/etc/proxy-suite \
  -p 21:21 \
  -p 41000:41000 \
  -p 41001:41001 \
  ehehdadaltd/ftp-proxy
```

The ports 41000 and 41001 are being used in passive mode. This can be forced in the conf file, in the section `[-Global-]`:
```
PassiveMinDataPort    41000
PassiveMaxDataPort    41001
```
If your proxy is behind of a router, you also will need to force the public IP in the section `[-Global-]`:
``` 
TranslatedAddress     X.X.X.X
```
where X.X.X.X is your public IP.

# At Github
https://github.com/ehehdada/ftp-proxy
