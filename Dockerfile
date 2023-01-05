FROM node:19-alpine
RUN --mount=target=. ls
WORKDIR /app
ENV NODE_ENV=production
COPY package.json ./
COPY package-lock.json ./
# ADD dist .
# COPY --from=dist * ./
RUN ls
# RUN npm ci --omit dev --ignore-scripts
# CMD ["node", "index.js"]