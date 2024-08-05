[![caddy on DockerHub][dockerhub-image]][dockerhub-url]
[![Docker Build][gh-actions-image]][gh-actions-url]

# caddy-godaddy

Caddy with a few plugins:

  - [mholt/caddy-dynamicdns](https://github.com/mholt/caddy-dynamicdns)
  - [caddy-dns/godaddy](https://github.com/caddy-dns/godaddy)
  - [lucaslorentz/caddy-docker-proxy](https://github.com/lucaslorentz/caddy-docker-proxy)

## Release instructions (for maintainers)

The release process is currently semi-automated, held together with shell scripts and gomplate (and duct tape).

1. update the `config.yml` file (update `caddy_version`) and save
2. run `make` (note that you'll need [`gomplate`](https://docs.gomplate.ca/installing/) on your path)
3. commit all changed Dockerfiles and `config.yaml` and issue a PR
4. once the CI passes and the PR is merged, pull and run `make all` - this should update the `library/caddy-godaddy` file
5. commit the updated `library/caddy-godaddy` file and push directly to `main`

[gh-actions-image]: https://github.com/davejab/caddy-godaddy-docker/workflows/Docker%20Build/badge.svg?branch=master
[gh-actions-url]: https://github.com/davejab/caddy-godaddy-docker/actions?workflow=Docker%20Build&branch=master

[dockerhub-image]: https://img.shields.io/badge/docker-ready-blue.svg
[dockerhub-url]: https://hub.docker.com/r/davejabra/caddy-godaddy
