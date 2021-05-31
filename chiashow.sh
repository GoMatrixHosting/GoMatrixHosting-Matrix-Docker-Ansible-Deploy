#!/bin/bash
cd ~/chia-blockchain
. ./activate
#chia init
chia show -s
chia farm summary
chia wallet show
exit
