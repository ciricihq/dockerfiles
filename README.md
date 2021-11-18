# Create new images

1. Create folder and Dockerfile
2. Push to master branch
3. Create Docker image on local. For example: `docker build -t ciricihq/node:${tag} .`
4. Exec `docker login`
5. Publish the new image `docker push ciricihq/node:${tag}`
6. Verify the image on `https://hub.docker.com/`
