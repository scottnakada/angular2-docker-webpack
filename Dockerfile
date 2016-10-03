# To build and run with Docker:
#
#  $ docker build -t angular2-docker-webpack .
#  $ docker run -it -p 3000:3000 -p 3001:3001 angular2-webpack
#
# Start with a default nodejs image
FROM node:latest

# Add some necessary packages
RUN apt-get update
RUN apt-get install -y vim

# Create a nodejs account, in nodejs group, with home directory /home/nodejs
RUN mkdir -p /home/nodejs && \
    groupadd -r nodejs && \
    useradd -r -g nodejs -d /home/nodejs -s /sbin/nologin nodejs && \
    chown -R nodejs:nodejs /home/nodejs

# Use /quickstart as the working directory
WORKDIR /home/nodejs

# Pull the source code from Git
RUN git clone https://github.com/scottnakada/angular2-docker-webpack.git

WORKDIR /home/nodejs/angular2-docker-webpack
RUN npm install --unsafe-perm=true
RUN chmod -R nodejs:nodejs /home/nodejs

# Startup as user nodejs
USER nodejs

EXPOSE 3000 3001

# Start the web-server
CMD npm start
