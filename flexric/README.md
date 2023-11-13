# Flexric
This folder contains some files to run flexric inside a container
## mini
Both `minimal-dockerfile` and `flexric-mini.yaml` follow the idea of reducing the overall image size for flexric using busybox as the base image. This means that debugging will be harder using this container. This is only recommend to be used once your build is working and all you need is to run the ric.
## network\_mode host
The compose files in here use `network_mode: "host"` constantly because it is easier for me. To run flexric in a docker network just declare the ports to be proxied (e.g. 36422 and 36421) and remember to overwrite the file in `/flexric/flexric.conf` with your own custom file containing the IP that the RIC should bind to.

