#!/bin/bash

read -p "Input the length of the passwd :" PASSWD_LEN
read -p "How many youn may want to generate? " NUMBER
for PASS in $(seq 1 "$NUMBER"); 
do
	openssl rand -base64 48 | cut -c1-$PASSWD_LEN 
done

