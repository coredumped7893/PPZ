<?php namespace App\Models;

/**
 * Class TradeModel
 * @package App\Models
 */
class TradeModel extends \CodeIgniter\Model {

    /**
     * Zwraca listę skinów obecnie możliwych do kupienia
     * @return array|mixed
     */
    public function getskinList(){
        $b = $this->db->table("skin_list");
        return $b->getWhere(['active'=>1])->getResult();
    }

    /**
     * Pobiera skiny obecnie zalogowanego użytkownika
     * @return array|array[]|object[]
     */
    public function getUserSkins(){
        return $this->db->query(
            "SELECT * FROM `inventory` 
            join item on `item`.`id`= `inventory`.`item_id` 
            join skin_list on `item`.`skin_list_id`=`skin_list`.`id`
            where user_username='".session('username')."'")
            ->getResult();
    }

}