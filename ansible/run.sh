#!/usr/bin/env bash

ansible-playbook -i hosts main.yml -l $1
