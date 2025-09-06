FROM linuxconfig/instantprivacy

RUN sed -i 's/listen-address\s*0.0.0.0:8118/listen-address 0.0.0.0:8100/g' /etc/privoxy/config 

EXPOSE 9050/tcp 8100/tcp
