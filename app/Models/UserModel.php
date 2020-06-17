<?php namespace App\Models;


use CodeIgniter\Database\BaseBuilder;
use Config\Database;

/**
 * Class UserModel
 * @package App\Models
 */
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
     *  
     */
    public function auth($data): array {
        $out = array('status'=>false,'message'=>'','role'=>'');
        $b = $this->db->table('user');
        helper('isodate');
        $now = iso_datetime();
        $b->select("*");
        $b->join('account_ban','account_ban.user_username = user.username and account_ban.validity > NOW()','left');
        $b->where(['username'=>$data['login']]);
        $res = $b->get();
        $res = $res->getResult();
        $b->resetQuery();
        obj_dump($res);
        if(count($res) == 1 && password_verify($data['pass'],$res[0]->password) ){
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

    /**
     * Pobiera liste znajomych dla obecnego użytkownika
     */
    public function getUserFriends(){
        return $this->db->query("
            SELECT * FROM friend where `user_inviting`='".session('username')."'
        ")->getResult();
    }

    /**
     * Pobiera listę zaproszeń do znajomych
     * @return array|array[]|object[]
     */
    public function getUserInvitations(){
        return $this->db->query("
            SELECT * FROM friend where `user_invited`='".session('username')."' AND `accepted`='0'
        ")->getResult();
    }

    public function registerUser($data){
        $b = $this->db->table("user");
        $b->insert([
            'username' => $data['username'],
            'email' => $data['username']."@wit.edu.pl",
            'password' => password_hash($data['pass'],PASSWORD_BCRYPT),
        ]);
        $b->resetQuery();
        $b = $this->db->table("user_config_");
        $b->insert([
            'user_username' => $data['username'],
        ]);



    }

    /**
     * Wpisuje nowe zaproszenie do znajomych
     * @param $invited
     * @return array|array[]|object[]
     */
    public function createFriend($invited){
        $invited = $this->db->escapeString(esc($invited));
        var_dump($this->checkFriend($invited));
        if(!$this->checkFriend($invited)){
             $this->db->query("
            INSERT INTO friend (`user_inviting`,`user_invited`) VALUES ('".session('username')."','".$invited."')
        ")->getResult();
        }else{

            $this->db->query("
            INSERT INTO friend (`user_inviting`,`user_invited`) VALUES ('".session('username')."','".$invited."')
            ")->getResult();

            $this->db->query("
                UPDATE friend SET `accepted`='1' WHERE (`user_inviting`='".session('username')."' AND `user_invited`='".$invited."' ) OR 
                (`user_inviting`='".$invited."' AND `user_invited`='".session('username')."')
            ")->getResult();
        }

    }

    public function deleteFriend($toDelete){
        $toDelete = esc($toDelete);
//        $b = $this->db->table("friend");
//        $b->orWhere(['user_inviting'=>session('username'),'user_invited'=>$toDelete]);
//        $b->orWhere(['user_inviting'=>$toDelete,'user_invited'=>session('username')]);
//        $b->delete();
        $this->db->query("
            DELETE FROM friend where (`user_inviting`='".session('username')."' AND `user_invited`='".$toDelete."' ) OR (`user_inviting`='".$toDelete."' AND `user_invited`='".session('username')."')
        ")->getResult();
    }

    /**
     * Checks if logged in user are friends with given username
     * @param $name
     * @return bool
     * @see session()
     */
    public function checkFriend($name) : bool {
        return !empty($this->db->query("
            SELECT * FROM friend where (`user_inviting`='".session('username')."' AND `user_invited`='".$name."' ) OR 
                (`user_inviting`='".$name."' AND `user_invited`='".session('username')."')
        ")->getResult());
    }

    /**
     * Pobiera statystyki gier dla obecnego użytkownika
     * @param $gameName
     * @return array|array[]|object[]
     */
    public function getUserStats($user){
        $user = $this->db->escape(esc(($user)));
        //select DISTINCT * from player_stats order by score DESC limit 15
        return $this->db->query("SELECT MAX(score) as score,game_name FROM `player_stats` WHERE user_username=".$user." group by game_name order by score DESC")->getResult();
    }


    private function _hashPassword($pass):string {
        //        $h = password_hash("password",PASSWORD_BCRYPT);
//        echo $h.'  ------   ';
//        var_dump(password_verify("password",$h));
        return '';
    }


}