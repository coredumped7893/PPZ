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
        if(!empty($this->data['games'])){
            foreach ($this->data['games'] as $g){
                $this->data['data'][$g['name']] = $this->gameModel->getPlayerStats($g['name'],5);
            }
        }

        $this->data['includeCSS'] = ['owl.carousel','owl.theme.default'];
        $this->data['includeJS'] = ['owl.carousel.min','carouselconfig'];


        //Pobranie dostępnych do sprzedaży skinów
        $tradeModel = model('TradeModel');
        $this->data['skins'] = $tradeModel->getskinList();
        $this->data['title'] = "Strona główna";

		return view('home',$this->data);
	}

    /**
     * Contact us form/data
     */
    public function contact(){
        $this->data['title'] = "Kontakt";

        return view('contact',$this->data);
    }


    /**
     * Widok FAQ
     * @return string
     */
    public function faq(){
        $this->data['title'] = "FAQ";

        return view('faq',$this->data);
    }

    /**
     * Widok regulaminu
     */
    public function ToS(){
        $this->data['title'] = "Regulamin";

        return view('tos',$this->data);
    }

    /**
     * Widok informacji dot. rodo
     */
    public function rodo(){
        $this->data['title'] = "Rodo";

        return view('rodo',$this->data);
    }


}
