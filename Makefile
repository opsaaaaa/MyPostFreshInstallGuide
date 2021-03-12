SHELL := /bin/bash

HELP_PAGE := ./help.md

SCRIPT_PATH :=  ./src
TEMPLATE_PATH := ./meta/template

.PHONY: default help new

default: help

help: 
	echo | cat $(HELP_PAGE)

new:
	./meta/new $(SCRIPT_PATH) $(TEMPLATE_PATH)
	


	
