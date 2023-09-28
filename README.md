# 5G-testbed
5G testbed deployed at UNISINOS. Currently only mode 1 and 2 work.
List of items required:
- A computer running Ubuntu 22.04
- b210 USRP runnig as a gNB (modes 1 and 3 only)
- Another b210 USRP to run as a UE (mode 3 only)
- A Consumer Of The Shelf (COTS) User Equipment (UE) AKA a cellphone (in our case a Samsung Galaxy A33 5G) (mode 1 only)

## Mode 1: COTS UE + srsRAN
In this mode the computer will run a core network as well as srsRAN, as our gNB, and a COTS UE will be used to test the network.

## Mode 2: srsRAN + srsUE + ZMQ
In this mode everything will be ran on the computer! Our gNB and UE will be connected using ZMQ which is a way of virtualizing the radios. This method is great for CI depending on what you want to test.

## Mode 3: srsRAN + srsUE
This mode DOES NOT work as of writing.
In this mode both the gNB and the UE will be ran in the computer, however, they will communicate with each other using the b210s which enables for different kinds of testing and more control over the UE.
