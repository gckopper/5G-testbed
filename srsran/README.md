# srsRAN
## Running with external core or RIC
Whenever trying to run srsRAN with external components remember to specify an external ip address for srsRAN to bind to.
## Speed
The `gnb_speed.yml` file should allow for a COTS UE to reach around 50Mbps and over 90Mbps if used with the [qam256](https://github.com/srsran/srsRAN_Project/blob/main/configs/qam256.yml) file from the official srsRAN project. 
## Run with ric script
This will help to run srsRAN with the RIC from ORAN SC by getting the ip from k8s for you.
