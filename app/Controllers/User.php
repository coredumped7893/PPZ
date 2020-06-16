<?php namespace App\Controllers;

use App\Libraries\Api;
use App\Models\UserModel;
use CodeIgniter\Controller;
use CodeIgniter\Session\Session;


/**
 * Class User
 * @package App\Controllers
 * @author Maciek Malik
 */
class User extends BaseController{

    private $userModel;

    /**
     * User constructor.
     * Makes UserModel avail in class
     *
     * @internal
     * @see UserModel
     */
    public function __construct() {
        $this->userModel = model('UserModel');
    }


    private function get_gravatar( $email, $s = 100, $d = 'identicon', $r = 'g', $img = false, $atts = array() ) {
        $url = 'https://www.gravatar.com/avatar/';
        $url .= md5( strtolower( trim( $email ) ) );
        $url .= "?s=$s&d=$d&r=$r";
        if ( $img ) {
            $url = '<img src="' . $url . '"';
            foreach ( $atts as $key => $val )
                $url .= ' ' . $key . '="' . $val . '"';
            $url .= ' />';
        }
        return $url;
    }

    /**
     * If logged in, shows user dashboard
     *
     * @internal
     * @return void
     * @internal
     */
    public function index(){
        //Get gravatar
        $this->data['gravatar'] = $this->get_gravatar(session('username'));
        $this->data['stats'] = $this->userModel->getUserStats(session('username'));
        $this->data['includeCSS'] = ['owl.carousel','owl.theme.default'];
        $this->data['includeJS'] = ['owl.carousel.min','carouselconfig'];

        $tradeModel = model('TradeModel');
        $this->data['skins'] = $tradeModel->getUserSkins();
        $this->data['title'] = session('username');
        return view('dashboard',$this->data);
    }

    /**
     *  Settings view
     */
    public function settings(){
        echo "Settings";
    }

    /**
     * @param string $username Username unique name/login
     * @return void
     * @api
     */
    public function items($username){
        //@TODO get items from DB; check for permissions; must be logged in
    }

    /**
     * GET: gets your friend list
     * PUT: Send friend request
     * DELETE: Cancel friend request or remove from friend list
     *
     * @return void
     * @api
     */
    public function friends(){
        //@TODO get your friends list
    }

    /**
     * Display user login form, and catch data after submit
     * @internal
     *
     */
    public function login(){
        if($this->data['loginStatus']) return redirect()->to('/user');// If logged in, redirect to profile
        $this->data['title'] = "Zaloguj";
        return view('login');
    }

    /**
     * Register view
     * @internal
     */
    public function register(){
        return view('register');
    }

    /**
     * Get data from register form and save it to database
     * @internal
     */
    public function saveuser(){

    }

    /**
     * GET: gets login info
     * POST: Send login data and try to authorize
     * DELETE: logout
     *
     * @return void
     * @see \App\Controllers\BaseController::$session
     * @see \redirect
     * @see \App\Models\UserModel::auth
     * @api
     */
    public function auth(){
        $postData = $this->request->getPost();
        $this->session->set('login_status','');
        $this->session->markAsFlashdata('login_status');
        if($this->request->getMethod(true) == "POST"){
            if(!empty($postData)){
                $status = $this->userModel->auth(array("login"=>$postData['login'],"pass"=>$postData['pass']));
                if($status['status']){
                    //Set session values
                    $this->session->set('username',esc($postData['login']));
                    $this->session->set('role',$status['role']);
                    echo $status['message'];
                    return redirect()->to('/user');//User`s dashboard/profile
                }else{
                    $this->session->set('login_status',$status['message']);
                    echo $status['message'];
                    return redirect()->back();
                }
            }else{
                //	¯\_(ツ)_/¯
                //Form cannot be empty
                $this->session->set('login_status','Form cannot be empty');
                obj_dump("Empty form");
                return redirect()->back();
            }
        }else if($this->request->getMethod(true) == "DELETE"){
            self::logOut();
        }else if($this->request->getMethod(true) == "GET"){
            self::isLoggedIn(true);
        }
    }

    /**
     * @internal
     */
    public static function logOut(){
        $ses = session();
        $ses->destroy();
        return redirect()->to("/");
        Api::response(200);
    }


    /**
     * @api
     * @return string
     */
    public function config(){
        return Api::response(204);
    }


    /**
     * Checks if user is logged in
     *
     * @return bool
     * @api
     */
    public static function isLoggedIn(bool $message) : bool {
        $ses = session();
        if($ses->has('username') && $ses->get('username') != ''){
            //obj_dump(true);
            if($message) echo Api::response('200_custom',"true");
            return true;
        }else{
            //obj_dump(false);
            if($message) echo Api::response('200_custom',"false");
            return false;
        }
    }


}