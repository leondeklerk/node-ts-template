FROM node:19-alpine
WORKDIR /app
ENV NODE_ENV=production
COPY package.json ./
COPY package-lock.json ./
COPY dist ./
RUN ls
RUN npm ci --omit=dev --ignore-scripts
CMD ["node", "index.js"]