#base image 
FROM node:18.20.3 AS build

# Create app directory
WORKDIR /opt/app

#copy dependencies manifest files
COPY package.json ./
COPY package-lock.json ./

#code source
COPY src/ ./src

# build configuration files
COPY nest-cli.json ./
COPY tsconfig.json ./
COPY tsconfig.build.json ./

RUN npm install

#production build of your code
RUN npm run build

RUN rm -rf node_modules

#install dependecies
RUN npm install --omit=dev


FROM gcr.io/distroless/nodejs18-debian12 AS production

#copies 'node_modules/' installled in build stage 
COPY --from=build /opt/app/node_modules ./node_modules

#copies 'dist/' directory where our transpiled executable code from build stage
#                 source         destination
#                 build-stage    production-stage
COPY --from=build /opt/app/dist ./dist

EXPOSE 3000
CMD ["dist/main.js"]