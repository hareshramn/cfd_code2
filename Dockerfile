FROM hareshram/cfd_code

COPY test/ /home/nimbix/

COPY ./NAE/AppDef.json /etc/NAE/AppDef.json

COPY NAE/screenshot.png /etc/NAE/screenshot.png
COPY NAE/AppDef.json /etc/NAE/AppDef.json
RUN curl --fail -X POST -d @/etc/NAE/AppDef.json https://api.jarvice.com/jarvice/validate

ADD ./NAE/help.html /etc/NAE/help.html
