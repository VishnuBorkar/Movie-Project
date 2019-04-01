<?php
class initial{
    function __construct(){
        define("_APP_PATH", 'app/');
        define("_CORE_PATH", 'classes/');
        define("_PUBLIC_PATH", 'Movies/');
        define("_VIEW_PATH", 'views/');
        define("_IMG_PATH", 'img/');
        define("_SQLLOG_PATH", 'logs/');
        // Load core classes
        require _CORE_PATH . "pdoDatabase.class.php";
        require _CORE_PATH . "controller.class.php";
        require _CORE_PATH . "display.class.php";
        spl_autoload_register(function($class){
            if (substr($class, -10) == "Controller")
                require_once _CORE_PATH . "$class.php";     
            elseif (substr($class, -5) == "Model")
              require_once  _CORE_PATH . "$class.class.php";
        });
    }
}