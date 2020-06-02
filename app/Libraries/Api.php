<?php namespace App\Libraries;
use Exception;

/**
 * @author Maciek Malik
 * @package App/Libraries
 */
class Api {

    /**
     * @var string[] List of predefined return messages
     */
    private static $responsesArr = array(
        "200" => "{\"message\": \"OK\",\"date\": \"%s\"}",
        "204" => "{\"message\": \"No Content\",\"date\": \"%s\"}",
        "418" => "{\"message\": \"I'm a teapot (RFC 2324)\",\"date\": \"%s\"}",
        "401" => "{\"message\": \"Unauthorized\",\"date\": \"%s\"}",
        "status_ok" => "{\"status\": \"Online\",\"date\": \"%s\"}",
        "status_offline" => "{\"status\": \"Offline\",\"date\": \"%s\"}",
        "200_custom" => "{\"message\": \"%s\",\"date\": \"%s\"}",
    );

    /**
     * Api constructor.
     */
    private function __construct() {
    }

    /**
     * @return string JSON Gets api status
     * @internal
     */
    public static function getApiStatus() : string {
        //@TODO get status from DB
        return self::response("status_ok");
    }

    /**
     * @return string JSON encoded
     * @throws Exception if given index is not found in response array
     * @param int $responseName http code or name
     * @internal
     */
    public static function response($responseName = 200,$msg=''){
        if(array_key_exists($responseName,self::$responsesArr)){
            helper("isodate");
            if(strpos($responseName, '_custom') === false){
                return sprintf(self::$responsesArr[$responseName],iso_datetime());
            }else{
                return sprintf(self::$responsesArr[$responseName],$msg,iso_datetime());
            }
        }else{
            throw new Exception("Response not found");
        }
    }


}