<?php namespace App\Controllers;

use App\Libraries\Api;
use CodeIgniter\Controller;


/**
 * Class User
 * @package App\Controllers
 * @author Maciek Malik
 */
class User extends BaseController{


    /**
     * @internal
     * @return void
     */
    public function index(){
        //@TODO id logged in redirect to dashboard

    }


    /**
     * @param string $username Username unique name/login
     * @return void
     * @api
     */
    public function items($username){
        //@TODO get items from DB; check for permissions
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
     * GET: gets login info
     * POST: Send login data and try to authorize
     * DELETE: logout
     *
     * @return void
     * @api
     */
    public function login(){
        //@TODO auth user
        //echo $this->request->getMethod();
    }


    /**
     * @internal
     * @return void
     */
    public function dashboard(){
        //@TODO Display and provide forms to edit user data.
        return null;
    }

    /**
     * @api
     * @return string
     */
    public function config(){
        return Api::response(204);
    }


}