FROM node:alpine3.21 AS development

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

# generate /dist folder
RUN npm run build

FROM node:alpine3.21 AS production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /usr/src/app

COPY package*.json ./

# ignore devDependencies and install only dependencies
RUN npm install --only=production

COPY . .

COPY --from=development /usr/src/app/dist ./dist

# now we have the dist folder and only dependencies required to run it
CMD ["node", "dist/main.js"]