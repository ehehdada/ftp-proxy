from ubuntu
maintainer ehehdada, ltd. <ehehdadaltd@gmail.com>
run apt-get update 
run apt-get install -y \
        ftp-proxy
expose 21
cmd ["/usr/sbin/ftp-proxy","-n","-d"]
