FROM node:18-alpine

WORKDIR /app

RUN npm install -g pnpm@9

COPY package.json pnpm-lock.yaml ./

RUN pnpm install --frozen-lockfile

COPY . .

EXPOSE 5173

RUN pnpm run build

CMD ["pnpm", "run", "preview"]
