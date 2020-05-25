<?php
/**
 * @author Maciek Malik
 */

if (! function_exists('obj_dump')) {

    function obj_dump($data){
        if(getenv('CI_ENVIRONMENT') == 'development'){
            echo '<pre>' . var_export($data, true) . '</pre>';
        }
    }

}
