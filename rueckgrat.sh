#!/bin/sh

##########################################################
# Scriptname   : rueckgrat.sh
# Author       : Jasper Carpizo
##########################################################

source rueckgrat.cfg
source class.sh


_startCommandLineList_() {
	clear
	echo "${GREEN}Rueckgrat Framework - version 1.0${NC}"
	echo "${GREEN}Created By FFUF Manila Inc.${NC}"
	echo
	echo "${GREEN}Usage:${NC}\n"
	echo ' command [name]'
	echo
	echo "${GREEN}Available Commands:${NC}\n"
	echo " ${ORANGE}make-ctrl [name]${NC} 	- Create new controller class"
	echo " ${ORANGE}make-model [name]${NC}      - Create new model class"
	echo " ${ORANGE}make-view [name]${NC}       - Create new view class"
	echo " ${ORANGE}make-dbo [name]${NC}        - Create new DBO class"
	echo " ${ORANGE}make-all [name]${NC}        - Create all controller, model, view, and dbo"
	echo

	_dirCheck_ ${DIR_CONTROLLER}
	_dirCheck_ ${DIR_MODEL}
	_dirCheck_ ${DIR_VIEW}
	_dirCheck_ ${DIR_DBO}

	_connectDatabase_

	_readCommand_
}

_readCommand_ () {
	read action name

	if [ "$action" == "make-ctrl" ] && [ ! -z $name ]; then
	  _createController_
	  echo "--Successfully created new controller $name"
	  echo
	elif  [ "$action" == "make-model" ] && [ ! -z $name ]; then
	  _createModel_
	  echo "--Successfully created new model $name"
	  echo
	elif  [ "$action" == "make-view" ] && [ ! -z $name ]; then
	  _createView_
	  echo "--Successfully created new view $name"
	  echo
	elif  [ "$action" == "make-dbo" ] && [ ! -z $name ]; then
	  _createDbo_
	  echo "--Successfully created new DBO $name"
	  echo
	elif  [ "$action" == "make-all" ] && [ ! -z $name ]; then
	  _createController_
	  _createModel_
	  _createView_
	  _createDbo_
	  echo "--Successfully created all with name $name"
	  echo
	else
	  _startCommandLineList_ 0;
	fi

	_readCommand_;
}

_dirCheck_ () {
   if test ! -d ${1}
   then
      mkdir -p ${1}
      [ $? -ne 0 ] && { echo "ERROR: Cannot create ${1}" ; }
   fi
}

_connectDatabase_ () {
		/Applications/MAMP/Library/bin/./mysql -u root  -p
}
_startCommandLineList_ 0;