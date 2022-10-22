FROM       node
RUN        useradd roboshop
RUN        mkdir /app
RUN        chmod roboshop /app
USER       roboshop
WORKDIR    /app
ADD        server.js /app
ADD        node_modules/ /app/node_modules
ENTRYPOINT ["node", "server.js"]