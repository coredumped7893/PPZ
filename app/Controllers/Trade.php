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

        //PayU Config --------------------------------------------------------------
        //set Production Environment
        \OpenPayU_Configuration::setEnvironment('secure');

        //set POS ID and Second MD5 Key (from merchant admin panel)
        \OpenPayU_Configuration::setMerchantPosId('145227');
        \OpenPayU_Configuration::setSignatureKey('13a980d4f851f3d9a1cfc792fb1f5e50');

        //set Oauth Client Id and Oauth Client Secret (from merchant admin panel)
        \OpenPayU_Configuration::setOauthClientId('145227');
        \OpenPayU_Configuration::setOauthClientSecret('12f071174cb7eb79d4aac5bc2f07563f');
        //--------------------------------------------------------------------------

        $this->data['includeCSS'] = ['animate.min'];
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
        $this->data['t'] = hash('sha256',rand(0,256).time());
        $this->session->set('t',$this->data['t']);
        $this->data['title'] = "Sklep";

        return view('trade/store',$this->data);
    }



    /**
     * Widok podsumowania zamówienia
     * @internal
     */
    public function createOrder(){

        $item = ($this->tradeModel->find(  $this->request->getGet('id')  ));
        if(empty($item) || $item == NULL){
            //Nie znaleziono szukanego itemu
            redirect()->back();
        }
        $this->data['t'] = hash('sha256',rand(0,256).time());
        $this->session->set('t',$this->data['t']);//Token for finishOrder
        srand(time());

        $order['continueUrl'] = 'http://ppz.local/store/finishOrder?t='.$this->data['t'].'&id='.$this->request->getGet('id'); //customer will be redirected to this page after successfull payment
        $order['notifyUrl'] = 'http://ppz.local/trade/order';
        $order['customerIp'] = $_SERVER['REMOTE_ADDR'];
        $order['merchantPosId'] = \OpenPayU_Configuration::getMerchantPosId();
        $order['description'] = 'PPZ order for '.$item['name'];
        $order['currencyCode'] = 'PLN';
        $order['totalAmount'] = 100*floatval($item['price']);
        $order['extOrderId'] = rand(0,256).time(); //must be unique!

        $order['products'][0]['name'] = $item['name'];
        $order['products'][0]['unitPrice'] = 100*floatval($item['price']);
        $order['products'][0]['quantity'] = 1;

        $response = \OpenPayU_Order::create($order);

        $this->data['payment'] = $response->getResponse();
        $this->data['item']['name'] = $item['name'];
        $this->data['item']['price'] = $item['price'];
        $this->session->set('orderId',$this->data['payment']->orderId);
        //$this->session->markAsFlashdata('orderId');
        $this->data['title'] = "POdsumowanie zamówienia";

        return view('trade/invoice',$this->data);
    }

    /**
     * Podsumowanie płatności, wyświetlenie wstępnego statusu
     * @internal
     */
    public function finishOrder(){
//        obj_dump($_POST);
//        obj_dump($_GET);
        //sleep(1);



        $status = \OpenPayU_Order::retrieve(session('orderId'));
        $this->data['payment']['status'] = $status->getResponse()->orders[0];
        $this->data['payment']['GET'] = $this->request->getGet('error');
        $this->data['includeJS'] = ['chPayment'];
        //obj_dump($status->getResponse());

        //Log payment to DB
        $this->tradeModel->logPayment($status->getResponse());

        //If status = COMPLETED: create new item and assign it to current user
        if($this->data['payment']['status']->status == 'COMPLETED'){
            $this->tradeModel->assignItem($this->request->getGet('id'),$status->getResponse());
        }



        return view('trade/order',$this->data);
    }

    /**
     * Używane do dynamicznego sprawdzania statusu płatności
     * @api
     */
    public function getOrderStatus(){
        $status = \OpenPayU_Order::retrieve(session('orderId'));
        if($status->getResponse()->orders[0]->status == 'COMPLETED'){
            $this->tradeModel->assignItem($this->request->getGet('id'),$status->getResponse());
        }
        echo $status->getResponse()->orders[0]->status;
    }


    /**
     * Odbieranie powiadomień od PayU z nowym statusem płatności
     * dla testowych płatności nie działa
     * @internal
     * @deprecated
     */
    public function order(){
        echo "----";
        $_SESSION['notify'] .= $this->request->getPostGet();
    }


    private function _testPayU(){

//        $order['continueUrl'] = 'http://ppz.local/store/finishOrder'; //customer will be redirected to this page after successfull payment
//        $order['notifyUrl'] = 'http://ppz.local/trade/order';
//        $order['customerIp'] = $_SERVER['REMOTE_ADDR'];
//        $order['merchantPosId'] = \OpenPayU_Configuration::getMerchantPosId();
//        $order['description'] = 'PPZ order for ';
//        $order['currencyCode'] = 'PLN';
//        $order['totalAmount'] = 3200;
//        $order['extOrderId'] = '21371'.rand(0,256).time(); //must be unique!
//
//        $order['products'][0]['name'] = 'Product1';
//        $order['products'][0]['unitPrice'] = 1000;
//        $order['products'][0]['quantity'] = 1;
//
//
//        $response = \OpenPayU_Order::create($order);
//        //obj_dump($response);
//        //echo($response->getResponse()->redirectUri);
//        //echo header('Location: '.$response->getResponse()->redirectUri);
//        //$this->response->setHeader("Location",$response->getResponse()->redirectUri)->prependHeader('Cache-Control', 'must-revalidate');;
//        //echo "<a href='".$response->getResponse()->redirectUri."'>PAY</a>";
//        //return redirect()->to($response->getResponse()->redirectUri);
//
//        $this->data['payment'] = $response->getResponse();

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