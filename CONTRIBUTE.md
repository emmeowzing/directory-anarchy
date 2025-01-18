# Contributing

To contribute to this repository, start by installing the necessary dependencies and following the build steps, below!

## Dependencies

Install asdf, followed by executing the dependencies script.

```shell
./scripts/dependencies.sh
```

This script will install all necessary tools and their versions as defined in the `.tool-versions`-file at the root of this repository.

### Docker

This project has primarily been developed on Docker. Please have a suitable version installed on your machine (25 and later). Please open an Issue in this repository if you have any issues running this container image.

## Build

Run the following Docker build and run commands to execute this codebase.

```shell
DOCKER_BUILDKIT=1 docker build --platform="linux/[amd64|arm64]" . -t directory-anarchy:latest
docker run -it -e DEBUG=true -n directory-anarchy-game directory-anarchy:latest
```

### pre-commit

