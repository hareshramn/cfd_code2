FROM nimbix/ubuntu-desktop
COPY test/ /home/nimbix/
COPY ./NAE/AppDef.json /etc/NAE/AppDef.json
COPY NAE/screenshot.png /etc/NAE/screenshot.png
COPY NAE/screenshot.txt /etc/NAE/screenshot.txt
COPY NAE/AppDef.json /etc/NAE/AppDef.json
ADD ./NAE/help.html /etc/NAE/help.html
