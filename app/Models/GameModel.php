<?php namespace App\Models;


class GameModel extends \CodeIgniter\Model {

    //CRUD config
    protected $table      = 'game';
    protected $primaryKey = 'name';
    protected $returnType     = 'array';

}