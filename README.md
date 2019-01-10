<img width="150" src="https://i.cloudup.com/zfY6lL7eFa-3000x3000.png" />
<img width="50" src="https://angular.io/assets/images/logos/angular/angular.svg" />

## Angular4+ Express Starter ( Advanced )

- Angular 5+
- ExpressJS ( 4.x - with compression )
- Webpack ( angular-cli )

## Concepts

- Redux ( NgRx/Store - with server calls)
- Smart & dumb components
- AOT: Ahead-of-Time compilation
- Advanced routing ( lazy loading, router outlets...)

## Install / Development

```bash
git clone https://github.com/vladotesanovic/angular2-express-starter
cd angular2-express-starter

# Install dependencies
npm install

# start server
npm run start

# Client url: http://localhost:4200
# Application ( epxress ) API: http://localhost:4300
```

## Build / Production

```bash

npm run build

## Deploy dist folder to app server

Structure of dist folder:

/dist/server <-- expressjs
/dist/client <-- angular2

```

## Docker
```bash

## Build Docker Image for combined Angular + Node project
docker build . --tag test/appname:v0.0.1

## Run image
docker run -it -p 8080:8080 "test/appname:v0.0.1"

```

## Note

All html and css are from: http://www.w3schools.com/howto/

Original Source Repository:  https://github.com/vladotesanovic/angular2-express-starter
