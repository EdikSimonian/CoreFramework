### Status
[![Build Status](https://travis-ci.org/EdikSimonian/CoreFramework.svg?branch=develop)](https://travis-ci.org/EdikSimonian/CoreFramework)

# CoreFramework

Complete .Net Core Web application with everything you need to start!

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

* Mac/Linux Machine
* Docker ( and docker-compose )
* Make

### Installing

A step by step series of examples that tell you have to get a development env running

Get your elasticsearch activation file *.json from https://register.elastic.co/ and copy it into Config folder as license.json

```
git clone https://github.com/EdikSimonian/CoreFramework.git
cd CoreFramework
make up
```

Wait for elasticsearch to come up and then run

```
make activate
```

Now you should be able to access your web app using http://127.0.0.1:80 and kibana using http://127.0.0.1:5601

## Credentials 

Username: core
Password: framework

To change the credentials edit HAProxy/haproxy.cfg

## License

This project is licensed under the GPLv3 License - see the [LICENSE.md](LICENSE.md) file for details

## Next

* Testing HAProxy
* Syncing the .Net performance metrics to ELK

## Acknowledgments

* .Net Core
* Docker
* Elastic
* Nginx
* Travis
