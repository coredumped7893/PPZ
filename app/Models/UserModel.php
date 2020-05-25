<?php namespace App\Models;


use CodeIgniter\Database\BaseBuilder;
use Config\Database;

class UserModel extends \CodeIgniter\Model {

    //CRUD config
    protected $table      = 'user';
    protected $primaryKey = 'username';
    protected $returnType     = 'array';

    /**
     * UserModel constructor.
     */
    public function __construct() {
        parent::__construct();
    }


    /**
     * Tries to auth user with given login and password
     * all params are escaped
     *
     * @param $data
     * @see \CodeIgniter\Database\BaseBuilder::getWhere
     * @see \CodeIgniter\Database\ResultInterface::getResult
     * @return array
     * @internal
     */
    public function auth($data): array {
        $out = array('status'=>false,'message'=>'','role'=>'');
        $b = $this->db->table('user');
        helper('isodate');
        $now = iso_datetime();
        $b->select("*");
        $b->join('account_ban','account_ban.user_username = user.username and account_ban.validity > NOW()','left');
        $b->where(['username'=>$data['login'],'password'=>$data['pass']]);
        $res = $b->get();
        $res = $res->getResult();
        $b->resetQuery();
        obj_dump($res);
        if(count($res) == 1 ){
            //user found
            if($res[0]->validity == NULL){
                //And not banned
                //Update last login field
                $b->set(['last_succ_login'=>iso_datetime()]);
                $b->where("username",$data['login']);
                if(!$b->update()){
                    //Error setting login status
                    $out['message'] = 'Error setting login status';
                }
                $out['status'] = true;
                $out['message'] = 'OK';
                $out['role'] = $res[0]->user_role_name;
            }else {
                $out['message'] = 'Account banned';
            }
        }else{
            //Nope
            $b->set(['last_err_login'=>iso_datetime()]);
            $b->where("username",$data['login']);
            $b->update();
            $out['status'] = false;
            $out['message'] = 'Wrong email or password';
        }
        obj_dump($out);
        return $out;
    }



}