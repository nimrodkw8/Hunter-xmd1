FROM node:lts-buster
RUN git clone https://github.com/ObedTech515/HUNTER-XMD1/root/ikObed
WORKDIR /root/ikObed
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
