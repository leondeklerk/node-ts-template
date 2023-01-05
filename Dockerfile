FROM node:19-alpine
RUN --mount=type=bind,target=/context ls /context
WORKDIR /app
ENV NODE_ENV=production
COPY package.json ./
COPY package-lock.json ./
# ADD dist .
# COPY --from=dist * ./
RUN ls
# RUN npm ci --omit dev --ignore-scripts
# CMD ["node", "index.js"]