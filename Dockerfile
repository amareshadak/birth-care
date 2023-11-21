FROM node:lts as dependencies
WORKDIR /my-project
CMD COPY package.json package-lock.json ./
CMD RUN npm ci

FROM node:lts as builder
WORKDIR /my-project
CMD COPY . .
CMD COPY --from=dependencies /my-project/node_modules ./node_modules
CMD RUN npm run build

FROM node:lts as runner
WORKDIR /my-project
ENV NODE_ENV production
# If you are using a custom next.config.js file, uncomment this line.
# COPY --from=builder /my-project/next.config.js ./
CMD COPY --from=builder /my-project/public ./public
CMD COPY --from=builder /my-project/.next ./.next
CMD COPY --from=builder /my-project/node_modules ./node_modules
CMD COPY --from=builder /my-project/package.json ./package.json

EXPOSE 3000
CMD ["npm", "start"]
