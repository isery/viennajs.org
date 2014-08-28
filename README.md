viennajs.org
============

## Setup

A `Makefile`, with `install` target is included:

```shell
make install
```

Create the `config/index.json' file. A template file is included.
```shell
cp config/index.json.tpl config/index.json
open config/index.json
```


## Development

During development start the app with the configured `dev` run script. This will start your app with `nodemon` listening for file changes. If a file changes, it will then automatically restart your app:
```shell
DEBUG="*" make dev
```

## Production

In Production you should create a init script. If you use a linux distribution with systemd you can use the `.service` file in `var/systemd-services` as a starting point. To start it manually in 'production' mode:

```shell
NODE_ENV="production" DEBUG="express-boilerplate*" make run
```
