# AWS IoT Greengrass (WIP)

AWS IoT Greengrass integration with balenaOS.

## Current status
This project is still a work in progress. 

Currently this project is able to:
- Install AWS Greengrass pre-requisites
- Run AWS Greengrass daemon, able to sync over MQTT

AWS daemon crashes when receiving a lambda deployment. Further work is required in order to have a working MVP integration.


## Install instructions

1. Configure AWS IoT as detailed on [this](https://docs.aws.amazon.com/greengrass/latest/developerguide/gg-gs.html) developer guide. Only the steps related to AWS IoT dashboard work are required.
2. Download your AWS IoT Core security resources as detailed [here](https://docs.aws.amazon.com/greengrass/latest/developerguide/gg-config.html) and store the `<ID-setup>.tar.gz` file on the downloads directory.
3. Edit `Dockerfile.template` file with the correct name for the security resources (i.e: `RUN tar -xzvf downloads/35ac2e76c2-setup.tar.gz -C /greengrass`)
4. Run `balena push <YOUR_BALENA_APP>` ([getting started with balena](https://www.balena.io/docs/learn/getting-started/raspberrypi3/nodejs/))
