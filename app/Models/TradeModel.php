<?php namespace App\Models;


class TradeModel extends \CodeIgniter\Model {

    public function getskinList(){
        $b = $this->db->table("skin_list");
        return $b->getWhere(['active'=>1])->getResult();
    }

    public function getUserSkins(){
        return $this->db->query(
            "SELECT * FROM `inventory` 
            join item on `item`.`id`= `inventory`.`item_id` 
            join skin_list on `item`.`skin_list_id`=`skin_list`.`id`
            where user_username='".session('username')."'")
            ->getResult();
    }

}