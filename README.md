selenium-docker-test
====================

This is a test repository to run selenium test inside docker container. This repository contains some sample selenium test cases written in Ruby RSpec. 

### Dependencies
- Docker

### Build selenium test docker image

```bash
git clone https://github.com/vbanthia/selenium-docker-test.git
cd selenium-docker-test

docker build --rm -t selenium-test .
```

### Start selenium server

```bash
docker run -d --name selenium-server selenium/standalone-chrome
```

### Run 

```bash
docker run --name selenium-test           \
           --link selenium-server:server  \
           -e "WEBDRIVER_HOST=server"     \
           -e "FEATURE_TYPE=feature_one"   \
           selenium-test
```

Above command will do following things:
- Start selenium test container
- Link it with selenium server container using tag as server
- Add environment variable `WEBDRIVER_HOST` and `FEATURE_TYPE` required by test script
- `WEBDRIVER_HOST` is simply selenium-server container tag


### Get test results

```bash
docker cp selenium-test:/usr/src/app/result.html ./
```

### Cleanup

```bash
docker rm selenium-test       # Remove selenium-test container
docker stop selenium-server   # Stop selenium-server container
docker rm selenium-server     # Remove selenium-server container
docker rmi selenium-test      # Delete selenium-test docker image
```
