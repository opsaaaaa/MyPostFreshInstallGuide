SHELL := /bin/bash

HELP_PAGE := ./help.md

SCRIPT_PATH :=  ./src
TEMPLATE_PATH := ./meta/template

META_PATH := ./meta
BIN_PATH := ./bin

TMP_DIR := /tmp/MFUIG/
export TMP_DIR
END_MSG_FILE := /tmp/MFUIG/end-messages.txt
export END_MSG_FILE

.PHONY: default help new executable

default: help

help: 
	echo | cat $(HELP_PAGE)

executable:
	chmod -R u+x $(BIN_PATH)
	chmod -R u+x $(SCRIPT_PATH)
	chmod -R u+x $(META_PATH)

new:
	./meta/new $(SCRIPT_PATH) $(TEMPLATE_PATH)
	
updowntest: 
	./bin/updowntest


	
