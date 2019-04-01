<?php
class display{
    protected $data;

    public function bind($key, $val) {
        $this->data[$key] = $val;
    }

    public function render($template) {
        ob_start();
        // you can access $this->data in template
        require _VIEW_PATH . $template . '.php';
        $str = ob_get_contents();
        ob_end_clean();
        return $str;
    }

}