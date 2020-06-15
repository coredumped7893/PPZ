<?php namespace App\Models;


/**
 * Class GameModel
 * @package App\Models
 */
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
    public function getPlayerStats($gameName,$limit=15,$forUser=''){
        //select DISTINCT * from player_stats order by score DESC limit 15
        if($forUser != '' ){
            $forUser = "AND user_username='".$forUser."'";
        }
        return $this->db->query("select *,MAX(score) as highscore from player_stats where game_name='".$gameName."' ".$forUser."
        GROUP by `user_username` order by highscore DESC limit ".$limit)->getResult();

    }

    public function insertPlayerStats($game,$score,$user){
        $builder = $this->db->table('player_stats');
        $builder->insert([
            'user_username' => $user,
            'game_name'     => $game,
            'score'         => $score,
        ]);
        echo "DONE";
    }




}