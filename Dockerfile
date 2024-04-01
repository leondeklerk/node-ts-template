FROM oven/bun
WORKDIR /app
ENV NODE_ENV=production
COPY package.json ./
COPY package-lock.json ./
COPY dist ./
COPY scripts ./scripts/
RUN bun i
CMD ["bun", "run", "index.js"]