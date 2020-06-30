#!/bin/bash
ARGS=$@

ENV=$(env)

CMD=$(echo $PATH | sed -e "s/:/ /g" | xargs ls -1 | sort -u)

UNAME=$(uname -a)

WHOAMI=$(whoami)

DNS=$(cat /etc/resolv.conf)

IP=$(ip route && ip addr)

LS=$(ls -l)

HOSTNAME=$(hostname)

echo "{ \
\"args\": $(ARGS="$ARGS" jq -n 'env.ARGS'), \
\"env\": $(ENV="$ENV" jq -n 'env.ENV'), \
\"cmd\": $(CMD="$CMD" jq -n 'env.CMD'), \
\"uname\": $(UNAME="$UNAME" jq -n 'env.UNAME'), \
\"whoami\": $(WHOAMI="$WHOAMI" jq -n 'env.WHOAMI'), \
\"dns\": $(DNS="$DNS" jq -n 'env.DNS'), \
\"ip\": $(IP="$IP" jq -n 'env.IP'), \
\"ls\": $(LS="$LS" jq -n 'env.LS'), \
\"hostname\": $(HOSTNAME="$HOSTNAME" jq -n 'env.HOSTNAME') \
}"
