#!/bin/bash
set -e

if [ $ENVIRONMENT = 'sbox' ]; then
    DNS_ENVIRONMENT=sandbox
fi

if [ $PRODUCT = 'cft-platform' ]; then
    if [ $ENVIRONMENT = 'stg' ]; then
        DNS_ENVIRONMENT=aat
    elif [ $ENVIRONMENT = 'test' ]; then
        DNS_ENVIRONMENT=perftest
    fi
    APP_NAME=plum
fi

if [ $PRODUCT = 'sds-platform' ]; then
    if [ $ENVIRONMENT = 'stg' ]; then
        DNS_ENVIRONMENT=staging
    fi
    APP_NAME=toffee
fi

echo "##vso[task.setvariable variable=DNS_ENVIRONMENT;isOutput=true]$DNS_ENVIRONMENT"
echo "##vso[task.setvariable variable=APP_NAME;isOutput=true]$APP_NAME"