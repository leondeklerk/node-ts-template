FROM node:19-alpine
WORKDIR /app
ENV NODE_ENV=production
ENV CI=1
COPY package.json ./
COPY package-lock.json ./
COPY dist ./
COPY scripts ./scripts/
RUN npm ci --omit=dev
CMD ["node", "index.js"]