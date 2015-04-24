#!/bin/bash

source class.sh

_startCommandLineList_() {
	clear
	echo 'Rueckrat Commandline List'
	echo
	echo 'create controller [name]'
	echo 'create model [name]'
	echo 'create view [name]'
	echo 'create dbo [name]'
	echo
	_readCommand_
	#echo 'Intializing....'
	#while true; do false; sleep 2; done
}

_readCommand_ () {
	read action event name

	if [ "$action" == "create" ] && [ "$event" == "controller" ] && [ ! -z $name ]; then
	  _createController_
	  echo "--Successfully created new controller $name"
	  echo
	elif  [ "$action" == "create" ] && [ "$event" == "model" ] && [ ! -z $name ]; then
	  echo "--Successfully created new model $name"
	  echo
	elif  [ "$action" == "create" ] && [ "$event" == "view" ] && [ ! -z $name ]; then
	  echo "--Successfully created new view $name"
	  echo
	elif  [ "$action" == "create" ] && [ "$event" == "dbo" ] && [ ! -z $name ]; then
	  echo "--Successfully created new DBO $name"
	  echo
	else
	  echo "--Invalid Command";
	  #_startCommandLineList_ 0;
	fi

	_readCommand_;
}
_startCommandLineList_ 0;