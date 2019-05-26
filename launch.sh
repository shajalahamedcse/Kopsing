#!/usr/bin/env bash

kops create cluster \
       --state "s3://state.kops.algaops.com" \
       --zones "us-east-1c,us-east-1d,us-east-1f"  \
       --master-count 3 \
       --master-size=t2.micro \
       --node-count 3 \
       --node-size=t2.micro \
       --name alga.k8s.local \
       --yes
