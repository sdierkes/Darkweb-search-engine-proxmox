FROM linuxconfig/instantprivacy

RUN sed -i 's/listen-address\s*0.0.0.0:8118/listen-address 0.0.0.0:8101/g' /etc/privoxy/config 
RUN sed -i 's/:9050/:9051/g' /etc/tor/torrc

EXPOSE 9051/tcp 8101/tcp
