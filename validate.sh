#!/usr/bin/env bash
kops validate cluster \
       --state "s3://state.kops.algaops.com" \
       --name alga.k8s.local

