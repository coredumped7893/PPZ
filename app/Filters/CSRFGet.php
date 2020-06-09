<?php


namespace App\Filters;


use App\Controllers\User;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;

/**
 * Przepuszcza tylko zalogowanego użytkownika
 * @package App\Filters
 */
class CSRFGet implements \CodeIgniter\Filters\FilterInterface {

    /**
     * Sprawdzenie czy istnieje token i czy jest równy temu z sesji
     * @inheritDoc
     */
    public function before(RequestInterface $request) {
        if($request->getGet('t') == NULL || $request->getGet('t') == ''){
            return redirect()->to('/');//Brak pola z tokenem
        }else{
            if($request->getGet('t') != session('t')){
                //Czy token jest ważny
                return redirect()->to('/');
            }
        }
       $_SESSION['t']='';//Reset tokenu
    }

    /**
     * @inheritDoc
     */
    public function after(RequestInterface $request, ResponseInterface $response) {
    }
}