#!/bin/bash

yq -e 'map(. + 1)' sample.array.yml
yq -e 'map_values(. + 1)' sample.objects.yml

