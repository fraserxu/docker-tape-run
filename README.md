# docker-tape-run
A demo to setup a tape-run environment on linux with Docker

There's a known issue that electron does not support [headless testing on Linux](https://github.com/atom/electron/issues/228), but we can use xvfb to create a virtual frame environment to make it work.

Here's a little demo setup to make it work with docker, same idea could applied to any Linux environment.

To build the docker image

```
docker build -t docker-tape-run .
```

To run the test

```
docker run docker-tape-run
```

This repo copies ideas from [Running Nightmare headlessly on Linux ](https://github.com/segmentio/nightmare/issues/224#issuecomment-141575361)
