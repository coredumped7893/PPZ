<?php


namespace App\Controllers;


/**
 * Class Trade
 * @package App\Controllers
 */
class Trade extends BaseController {

    /**
     * Trade constructor.
     */
    public function __construct() {
        $this->tradeModel = model('TradeModel');
    }


    /**
     * @api
     *
     */
    public function index () {

    }

    /**
     * Sklep ze skinami
     * @internal
     */
    public function store(){
        $this->data['skins'] = $this->tradeModel->getskinList();
        return view('trade/store',$this->data);
    }


    /**
     * POST: Edit existing trade  (logged in only)
     * PUT: Create new trade (logged in only)
     * Get general trading stats
     * @api
     */
    public function stats () {
    }

    /**
     * Gets trade list for current user (logged in)
     * @api
     */
    public function list () {
    }

}