FROM node:19-alpine
WORKDIR /app
ENV NODE_ENV=production
COPY package.json ./
COPY package-lock.json ./
ADD http://date.jsontest.com /etc/builddate
RUN ls
COPY --from=dist dist ./
RUN npm ci --omit dev --ignore-scripts
CMD ["node", "index.js"]