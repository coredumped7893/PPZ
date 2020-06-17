<?php namespace Config;

use CodeIgniter\Config\BaseConfig;

/**
 * Class Filters
 * @package Config
 */
class Filters extends BaseConfig
{
	// Makes reading things below nicer,
	// and simpler to change out script that's used.
	public $aliases = [
		'csrf'     => \CodeIgniter\Filters\CSRF::class,
		'toolbar'  => \CodeIgniter\Filters\DebugToolbar::class,
		'honeypot' => \CodeIgniter\Filters\Honeypot::class,
        'auth'     => \App\Filters\AuthFilter::class,
        'csrfget'  => \App\Filters\CSRFGet::class,
	];

	// Always applied before every request
	public $globals = [
		'before' => [
			//'honeypot'
			// 'csrf',
		],
		'after'  => [
			'toolbar' => ['except' => ['game/data/*','game/stats/*']],
			//'honeypot'
		],
	];

	// Works on all of a particular HTTP method
	// (GET, POST, etc) as BEFORE filters only
	//     like: 'post' => ['CSRF', 'throttle'],
	public $methods = [];

	// List filter aliases and any before/after uri patterns
	// that they should run on, like:
	//    'isLoggedIn' => ['before' => ['account/*', 'profiles/*']],
	public $filters = [
	    'auth' => ['before' => [
	        '/user',
            '/user/friends',
            '/game/*',
            '/trade/*',
            '/user/settings',
            'store/*',
        ]],
        'csrfget' => ['before' => [
            '/store/createOrder',
            'store/finishOrder'
        ]],
    ];
}
