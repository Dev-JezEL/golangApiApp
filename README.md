# golangApiApp

_Simple golan api rest App development by Dev-JezEL_

## Comenzando 🚀

_git clone [url]_

Mira **Deployment** para conocer como desplegar el proyecto.

_cd golangApiApp_

### Pre-requisitos 📋

_If u dont installed mod of golang_

```
go mod init golangApiApp
```

_Create a image from dockerfile content_

```
docker build --no-cache -t golang-api-app .
```

_Create a image from dockerfile content_

```
docker run -d -p 9000:9000 --name golang-apiapp golang-api-app
```