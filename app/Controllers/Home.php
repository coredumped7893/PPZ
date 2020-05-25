<?php namespace App\Controllers;

/**
 * Class Home
 * @package App\Controllers
 * @author Maciek Malik
 */
class Home extends BaseController {
    /**
     * @var mixed
     */
    private $gameModel;


    /**
     * Home constructor.
     */
    public function __construct() {
        $this->gameModel = model('GameModel');
    }

    /**
     * Homepage view
     *
     */
    public function index() {
        $this->data['games'] = $this->gameModel->where('status','online')->findAll();//Lista aktywnych gier
		return view('home',$this->data);
	}



}
