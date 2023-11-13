export RIC_IP=`sudo kubectl get svc -n ricplt | grep e2term-sctp-alpha | grep -Eo "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"`
sudo ./build/apps/gnb/gnb -c ./gnb_ric_externo.yml e2 --bind_addr $RIC_IP e2 --addr $RIC_IP
