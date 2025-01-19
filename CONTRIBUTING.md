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

### Ephemeral

```shell
DOCKER_BUILDKIT=1 docker build --platform="linux/[amd64|arm64]" . -t directory-anarchy:latest
```

```shell
docker run -it -e DEBUG=true -n directory-anarchy-game directory-anarchy:latest
```

### Persisted

If you'd like to persist the game state, launch this container with a volume mapped to a local directory on your machine or mount a Docker volume.

```shell
mkdir ~/.anarchy_game_state
docker run -it -e DEBUG=true -v "$HOME"/.anarchy_game_state:/opt/anarchy -n directory-anarchy-game directory-anarchy:latest
```

### pre-commit

