## Minimal Alpine Linux Docker image with glibc

Basic [Docker](https://www.docker.com/) image based on [Alpine Linux](http://alpinelinux.org/), with [glibc](https://github.com/sgerrand/alpine-pkg-glibc).

### Tags

| Docker tag | Alpine version | glibc version | Metadata | Build status | [End of Support](https://alpinelinux.org/releases/)  |
| --- | --- | --- | --- | --- | --- |
| [`latest`, `3.14`, `3.14.3`, `3.14_2.33-r0`, `3.14.3_2.33-r0`](https://github.com/jeanblanchard/docker-alpine-glibc/blob/main/Dockerfile) | 3.14.3 | 2.34-r0 | ![](https://img.shields.io/docker/image-size/jeanblanchard/alpine-glibc/latest) | [![Circle CI](https://circleci.com/gh/jeanblanchard/docker-alpine-glibc/tree/main.svg?style=shield)](https://circleci.com/gh/jeanblanchard/docker-alpine-glibc/tree/main) | 2023-05-01 |
| [`3.13`, `3.13.7`, `3.13_2.34-r0`, `3.13.7_2.34-r0`](https://github.com/jeanblanchard/docker-alpine-glibc/blob/main/Dockerfile) | 3.13.7 | 2.34-r0 | ![](https://img.shields.io/docker/image-size/jeanblanchard/alpine-glibc/3.13) | [![Circle CI](https://circleci.com/gh/jeanblanchard/docker-alpine-glibc/tree/alpine3.13.svg?style=shield)](https://circleci.com/gh/jeanblanchard/docker-alpine-glibc/tree/alpine3.13) | 2022-11-01 |
| [`3.12`, `3.12.9`, `3.12_2.34-r0`, `3.12.9_2.34-r0`](https://github.com/jeanblanchard/docker-alpine-glibc/blob/alpine3.12/Dockerfile) | 3.12.9 | 2.34-r0 | ![](https://img.shields.io/docker/image-size/jeanblanchard/alpine-glibc/3.12) | [![Circle CI](https://circleci.com/gh/jeanblanchard/docker-alpine-glibc/tree/alpine3.12.svg?style=shield)](https://circleci.com/gh/jeanblanchard/docker-alpine-glibc/tree/alpine3.12) | 2022-05-01 |
| ~~[`3.11`, `3.11.13`, `3.11_2.34-r0`, `3.11.13_2.34-r0`](https://github.com/jeanblanchard/docker-alpine-glibc/blob/alpine3.11/Dockerfile)~~ | ~~3.11.13~~ | ~~2.34-r0~~ | ![](https://img.shields.io/docker/image-size/jeanblanchard/alpine-glibc/3.11) |  | ~~2021-11-01~~ |
| ~~[`3.10`, `3.10.9`, `3.10_2.33-r0`, `3.10.9_2.33-r0`](https://github.com/jeanblanchard/docker-alpine-glibc/blob/alpine3.10/Dockerfile)~~ | ~~3.10.9~~ | ~~2.33-r0~~ | ![](https://img.shields.io/docker/image-size/jeanblanchard/alpine-glibc/3.10) |  | ~~2021-05-01~~ |
| ~~[`3.9`, `3.9.6`, `3.9_2.32-r0`, `3.9.6_2.32-r0`](https://github.com/jeanblanchard/docker-alpine-glibc/blob/alpine3.9/Dockerfile)~~ | ~~3.9.6~~ | ~~2.32-r0~~ | ![](https://img.shields.io/docker/image-size/jeanblanchard/alpine-glibc/3.9) |  | ~~2020-11-01~~ |
| ~~[`3.8`, `3.8.5`, `3.8_2.31-r0`, `3.8.5_2.31-r0`](https://github.com/jeanblanchard/docker-alpine-glibc/blob/alpine3.8/Dockerfile)~~ | ~~3.8.5~~ | ~~2.31-r0~~ | ![](https://img.shields.io/docker/image-size/jeanblanchard/alpine-glibc/3.8) |  | ~~2020-05-01~~ |
| ~~[`3.7`, `3.7.3`, `3.7_2.30-r0`, `3.7.3_2.30-r0`](https://github.com/jeanblanchard/docker-alpine-glibc/blob/alpine3.7/Dockerfile)~~ | ~~3.7.3~~ | ~~2.30-r0~~ | ![](https://img.shields.io/docker/image-size/jeanblanchard/alpine-glibc/3.7) |  | ~~2019-11-01~~ |
| ~~[`3.6`, `3.6_2.29-r0`](https://github.com/jeanblanchard/docker-alpine-glibc/blob/alpine3.6/Dockerfile)~~ | ~~3.6~~ | ~~2.29-r0~~ | ![](https://img.shields.io/docker/image-size/jeanblanchard/alpine-glibc/3.6) |  | ~~2019-05-01~~ |
| ~~[`3.5`, `3.5_2.27-r0`](https://github.com/jeanblanchard/docker-alpine-glibc/blob/alpine3.5/Dockerfile)~~ | ~~3.5~~ | ~~2.27-r0~~ | ![](https://img.shields.io/docker/image-size/jeanblanchard/alpine-glibc/3.5) |  | ~~2018-11-01~~ |
