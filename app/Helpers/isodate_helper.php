<?php
/**
 * @author Maciek Malik
 */

if (! function_exists('iso_datetime')) {

    /**
     * @return string
     */
    function iso_datetime() : string{
        $now = \DateTime::createFromFormat('U.u', number_format(microtime(true), 6, '.', ''));
        // Truncate to milliseconds
        $nowFormatted = substr($now->format('Y-m-d\TH:i:s.u'), 0, -3) . 'Z';
        return $nowFormatted;
    }

}
