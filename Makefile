SHELL := /bin/bash

HELP_PAGE := ./help.md

.PHONY: default help

default: help

help: 
	echo | cat $(HELP_PAGE)



	
