#!/bin/bash

cat drawing.flag.svg | grep "tspan" | cut -d ">" -f 2 | cut -d "<" -f 1 | tr -d " " | tr -d "\n"
