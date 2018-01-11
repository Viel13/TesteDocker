FROM frolvlad/alpine-oraclejdk8:slim

WORKDIR /root

RUN wget ${targetpath}/${targetapplication} && \ 
    cp ${targetapplication} /var/apps && \
    rm ${targetapplication}

ENTRYPOINT [ "ash", "-c", "java -jar /var/apps/###targetapplication" ]
