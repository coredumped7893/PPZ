<?php


namespace App\Filters;


use App\Controllers\User;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;

/**
 * Przepuszcza tylko zalogowanego użytkownika
 * @package App\Filters
 */
class AuthFilter implements \CodeIgniter\Filters\FilterInterface {

    /**
     * Sprawdzenie czy użytkownik jest zalogowany, jeżeli nie -> przekieruj do strony logowania
     * @inheritDoc
     */
    public function before(RequestInterface $request) {
        if(!User::isLoggedIn(false)){
            return redirect()->to('/user/login');
        }

    }

    /**
     * @inheritDoc
     */
    public function after(RequestInterface $request, ResponseInterface $response) {
        // TODO: Implement after() method.
    }
}