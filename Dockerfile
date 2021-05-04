FROM hareshram/cfd_code

USER ROOT
COPY test/ /home/nimbix/

COPY ./NAE/AppDef.json /etc/NAE/AppDef.json

ADD ./NAE/help.html /etc/NAE/help.html
