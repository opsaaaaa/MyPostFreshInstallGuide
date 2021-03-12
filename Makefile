SHELL := /bin/bash

HELP_PAGE := ./help.md

SCRIPT_PATH :=  ./src
TEMPLATE_PATH := ./meta/template

TMP_DIR := /tmp/MFUIG/
END_MSG_FILE := $(TEMP_DIR)/end-messages.txt

.PHONY: default help new

default: help

help: 
	echo | cat $(HELP_PAGE)

new:
	./meta/new $(SCRIPT_PATH) $(TEMPLATE_PATH)
	
preinstaller:
	mkdir -p $(TMP_DIR)
	touch $(END_MSG_FILE)
	export END_MSG_FILE = $(END_MSG_FILE)

	
