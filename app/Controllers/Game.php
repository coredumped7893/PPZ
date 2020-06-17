<?php namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Libraries\Api;


/**
 * Class Game
 * @package App\Controllers
 */
class Game extends BaseController {
    //ResourceController??
    //Change to resource('game') ?

    protected $format    = 'json';


    /**
     * Game constructor.
     * @internal
     */
    public function __construct() {
        $this->model = model('GameModel');
    }

    protected $model;


    /**
     * Game list view
     * @internal
     */
    public function index() {
    }


    /**
     * Widok gier
     *
     * @param $gameName
     */
    public function play($gameName=''){
        if($gameName == ''){
            //Nazwa gry jest wymagana
            return redirect()->to('/');
        }
        $this->data['title'] = $gameName;

        return view('game/play/_'.$gameName.'_',$this->data);
    }

    /**
     * Lista obecnie aktywnych gier (/games)
     * @return string
     */
    public function gameList(){
        $this->gameModel = model('GameModel');
        $this->data['games'] = $this->gameModel->where('status','online')->findAll();//Lista aktywnych gier
        $this->data['title'] = "Gry";
        return view('game/list',$this->data);
    }

    /**
     * Rankingi top graczy
     */
    public function top(){
        $games = $this->model->where('status','online')->findAll();
        if(!empty($games)){
            foreach ($games as $g){
                $this->data['data'][$g['name']] = $this->model->getPlayerStats($g['name']);
            }
        }
        $this->data['title'] = "Top gracze";
        return view('game/top',$this->data);
    }

    /**
     * GET: Get game and user stats
     * (stats are now included in game/data)
     * POST: insert new score to DB
     *
     * @param $gameID
     * @api
     * @deprecated
     */
    public function stats($gameID) {
        $this->response->setHeader('Content-Type','application/json');
        $postData = $this->request->getPost();
        if($this->request->getMethod(true) == "GET"){
            //Get user highscore
            echo \json_encode($this->model->getPlayerStats($gameID,$limit=1,$forUser=session('username')));
        }else if($this->request->getMethod(true) == "POST"){
            echo $this->model->insertPlayerStats($gameID,$postData['data'],session('username'));
        }
    }

    /**
     * GET: Get game data
     * PUT: Save data to DB, accessible for games only
     * Game token required for accessing data
     * (token is unique per game)
     *
     * @param $gameName
     * @api
     */
    public function data($gameName) {
        $this->response->setHeader('Content-Type','application/json');
        $postData = $this->request->getPost();
        $getData = $this->request->getGet();
        if($this->request->getMethod(true) == "GET" && isset($getData['token'])){
            //Get game data as JSON
            $data = $this->model->where('name',$gameName)->where('access_token',$getData['token'])->findAll();
            if(count($data) < 1){
                //Empty result, wrong token or name
                return Api::response(204);
            }
            $data = $data[0];
            $data['data'] = json_decode($data['data']);
            $data['message'] = 'OK';
            echo json_encode($data);

        }else if($this->request->getMethod(true) == "PUT" && isset($getData['token'])){
            //Update game data
            $this->model->where('name',$gameName)->where('access_token',$getData['token'])->set(['data'=>($this->request->getBody())])->update();
            //obj_dump(json_encode($this->request->getBody()));
            return Api::response(200);
        }else{
            return Api::response(204);
        }
    }

}












