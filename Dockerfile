# Run this to build the app's docker image which uses this Dockerfile: docker build -t getting-started .
FROM node:12-alpine
WORKDIR /docker-tutorial-app
# Copy the application
COPY . .
# Install our application's dependencies.
RUN yarn install --production
# The CMD directive specifies the default command to run when starting a container from this image.
CMD ["node", "src/index.js"]