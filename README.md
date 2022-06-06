# CustomTelegraf

## Purpose
Create a docker container that has the ability to monitor hard drives and cpus using docker and telegraf.

## Packages added:
* smartmontools 
* lm-sensors 
* sudo

## Usage

How to use from docker-compose:
```Dockerfile
version: '2'
services:
  customtelegraf:
    image: dyslexicjedi/customtelegraf:latest
    container_name: customtelegraf
    volumes:
      - <path to telegraf.conf>:/etc/telegraf/telegraf.conf
    environment:
      - TZ=Americas/New_York
    restart: unless-stopped
```
