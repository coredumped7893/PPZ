<?php namespace App\Models;


class GameModel extends \CodeIgniter\Model {

    //CRUD config
    protected $table      = 'game';
    protected $primaryKey = 'name';
    protected $returnType     = 'array';
    protected $allowedFields = ['data'];

    /**
     * Ogólne statystyki dot. gier
     * @param $gameName
     * @return array|array[]|object[]
     */
    public function getPlayerStats($gameName){
        //select DISTINCT * from player_stats order by score DESC limit 15
        return $this->db->query("select DISTINCT * from player_stats where game_name='".$gameName."' order by score DESC limit 15")->getResult();
    }




}