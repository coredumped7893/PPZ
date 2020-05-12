<?php namespace App\Controllers;

/**
 * Class Home
 * @package App\Controllers
 * @author Maciek Malik
 */
class Home extends BaseController {


	public function index() {
		return view('welcome_message');
	}



}
