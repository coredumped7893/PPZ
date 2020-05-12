<?php namespace App\Models;


class UserModel extends \CodeIgniter\Model {

    //CRUD config
    protected $table      = 'user';
    protected $primaryKey = 'username';
    protected $returnType     = 'array';



}