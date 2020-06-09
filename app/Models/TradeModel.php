<?php namespace App\Models;

/**
 * Class TradeModel
 * @package App\Models
 */
class TradeModel extends \CodeIgniter\Model {


    //CRUD config
    protected $table      = 'skin_list';
    protected $primaryKey = 'id';
    protected $returnType     = 'array';

    /**
     * Zwraca listę skinów obecnie możliwych do kupienia
     * @return array|mixed
     */
    public function getskinList(){
        $b = $this->db->table("skin_list");
        return $b->getWhere(['active'=>1])->getResult();
    }

    /**
     * Save payment to DB
     * @param $response
     */
    public function logPayment($response){

        helper('isodate');
        $b = $this->db->table("payment_log");
        $succ = $b->insert([
            'paying_user'  => session('username'),
            'payment_id'   => $response->orders[0]->orderId,
            'status'       => $response->orders[0]->status,
            'date'         => iso_datetime(),
            'value'        => floatval($response->orders[0]->totalAmount)/100,
            'invoice'      => $response->orders[0]->extOrderId,
        ]);

    }

    public function assignItem($id,$response){

        helper('isodate');
        $b = $this->db->table("item");
        $this->db->transBegin();
        $succ = $b->insert([
            'name'         => $response->orders[0]->products[0]->name,
            'skin_list_id' => $id,
            'created'      => iso_datetime(),
            'tradable'     => 1,
            'marketable'   => 1,
            'skin_type'    => "normal",
        ]);
        if(!$succ){
            $this->db->transRollback();//If some error occured
            return ;
        }
        $newID = $this->db->insertID();
        $b->resetQuery();
        $b = $this->db->table("inventory");
        //Assign it to user inventory
        $succ = $b->insert([
            'item_id'       => $newID,
            'user_username' => session('username'),
            'added'         => iso_datetime(),
        ]);
        if(!$succ) {
            $this->db->transRollback();
            return;
        }else{
            $this->db->transCommit();
        }

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