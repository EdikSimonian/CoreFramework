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

Add these to your /etc/hosts

```
127.0.0.1 example.com
127.0.0.1 kibana.example.com
```

Now you should be able to access your web app using localhost.com and kibana using kibana.localhost.com

## License

This project is licensed under the GPLv3 License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* .Net Core
* Docker
* Elastic
