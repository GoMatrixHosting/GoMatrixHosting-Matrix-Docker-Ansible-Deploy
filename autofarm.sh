#!/bin/bash
cd ~/chia-blockchain
. ./activate
chia init
chia start harvester
chia start farmer
