#!/usr/bin/env bash

set -x

echo "############## SH #############"
echo "press enter at each stop"
read -p  "alpine sh "
docker run --rm -i -t alpine:3.7 /bin/sh -c 'if [ "toto" == "toto" ]; then echo "ok"; else echo "no"; fi'
read -p  "centos sh"
docker run --rm -i -t centos:7 /bin/sh -c 'if [ "toto" == "toto" ]; then echo "ok"; else echo "no"; fi'


read -p  "debian sh"
docker run --rm -i -t debian:buster /bin/sh -c 'if [ "toto" == "toto" ]; then echo "ok"; else echo "no"; fi'
read -p "ubuntu sh"
docker run --rm -i -t ubuntu:14.04 /bin/sh -c 'if [ "toto" == "toto" ]; then echo "ok"; else echo "no"; fi'

echo "############## BASH #############"


read -p  "alpine bash"
docker run --rm -i -t alpine:3.7 /bin/bash -c 'if [ "toto" == "toto" ]; then echo "ok"; else echo "no"; fi'
read -p  "centos sh"
docker run --rm -i -t centos:7 /bin/bash -c 'if [ "toto" == "toto" ]; then echo "ok"; else echo "no"; fi'


read -p  "debian bash"
docker run --rm -i -t debian:buster /bin/bash -c 'if [ "toto" == "toto" ]; then echo "ok"; else echo "no"; fi'
read -p "ubuntu bash"
docker run --rm -i -t ubuntu:14.04 /bin/bash -c 'if [ "toto" == "toto" ]; then echo "ok"; else echo "no"; fi'