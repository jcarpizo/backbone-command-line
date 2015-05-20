#!/bin/sh

_createController_ () {
cat <<EOF >${DIR_CONTROLLER}/$name.php
<?php

/**
 * Description of $name
 *
 * @author $USER
 *
 */

namespace app\controller;

use rueckgrat\mvc\DefaultController;

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
cat <<EOF >${DIR_MODEL}/$name.php
<?php

/**
 * Description of $name
 *
 * @author $USER
 *
 */

namespace app\model;

use rueckgrat\mvc\DefaultDBModel;

class $name extends DefaultDBModel {

	public function __construct() {
		 parent::__construct();
	}

	public function index() {

	}
}
EOF
}


_createView_ () {
cat <<EOF >${DIR_VIEW}/$name.php
<?php

/**
 * Description of $name
 *
 * @author $USER
 *
 */

namespace app\view;

use rueckgrat\mvc\FastView;

class $name extends FastView {

	public function __construct() {
		 parent::__construct();
		 $this->cacheDisabled = true;
	}
}
EOF
}

_createDbo_ () {
cat <<EOF >${DIR_DBO}/$name.php
<?php

/**
 * Description of $name
 *
 * @author $USER
 *
 */

namespace app\dbo;

use rueckgrat\db\Mapper;

class $name extends Mapper {

	public function __construct() {
		 parent::__construct();
	}
}
EOF
}