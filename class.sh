#!/bin/bash
_createController_ () {
cat <<EOF >$name.php
<?php

/**
 * Description of $name
 *
 * @author $USER
 *
 */

namespace app\controller;

class $name extends DefaultController {

	public function __construct() {
		 parent::__construct();
	}

	public function index() {

	}
}
EOF
}


_createModel_ () {
cat <<EOF >$name.php
<?php

/**
 * Description of $name
 *
 * @author $USER
 *
 */

namespace app\controller;

class $name extends DefaultController {

	public function __construct() {
		 parent::__construct();
	}

	public function index() {

	}
}
EOF
}