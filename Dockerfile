FROM node:19-alpine
WORKDIR /app
ENV NODE_ENV=production
COPY package.json ./
COPY dist ./
RUN ls
RUN npm i --omit=dev --ignore-scripts
CMD ["node", "index.js"]