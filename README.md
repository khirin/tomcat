## Tomcat Image

[![](https://images.microbadger.com/badges/image/khirin/tomcat.svg)](https://microbadger.com/images/khirin/tomcat "Get your own image badge on microbadger.com")

### Description
This is my minimal customized Tomcat image based on Alpine (with [my alpine image](https://hub.docker.com/r/khirin/alpine/)).
No root process.
The only purpose for this image is to be the starting point for my tomcat apps.

### Packages
• Packages from [khirin/alpine](https://hub.docker.com/r/khirin/alpine/)
• openjdk8-jre
• apache-tomcat-8.0.41

### Default Configuration
• Configuration from [khirin/alpine](https://hub.docker.com/r/khirin/alpine/)
• Default user (UID) : tomcat (2000)
• Default group (GID) : tomcat (2000)
• Default port : 8080

### Usage
This image isn't made for being directly used so use it for testing only.
• Run : Will use the default configuration above. Only for testing.
• Build : Example of custom build. You can also directly modify the Dockerfile (I won't be mad, promis !)
• Create : Example of custom create. Only for testing.

##### • Run
`docker run --detach -p 8080:8080 khirin/tomcat`

##### • Build
```shell
docker build --no-cache=true \
			--force-rm \
			--build-arg UID="2000" \
			--build-arg GID="2000" \
			--build-arg PORT="8080" \
			-t repo/tomcat .
```

##### • Create
`docker create -p 8080:8080 --hostname=tomcat --name tomcat repo/tomcat`

### Author
khirin : [DockerHub](https://hub.docker.com/u/khirin/), [GitHub](https://github.com/khirin?tab=repositories)

### Thanks
All my images are based on my personal knowledge and inspired by many projects of the Docker community.
If you recognize yourself in some working approaches, you might be one of my inspirations (Thanks!).
