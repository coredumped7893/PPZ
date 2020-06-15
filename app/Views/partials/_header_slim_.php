<!DOCTYPE HTML>
<!--
	Escape Velocity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

<?php
$cfg = (config('Template'));
?>

<html>
<head>
    <title><?= $cfg->siteName ?></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="/assets/css/main.css" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <link rel="apple-touch-icon" sizes="180x180" href="/images/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/images/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">


    <?php
    if(isset($includeCSS)){
        foreach ($includeCSS as $css){
            echo ' <link rel="stylesheet" href="/assets/css/'.$css.'.css" />';
        }
    }
    ?>


</head>
<body class="homepage is-preload">
<div id="page-wrapper">

    <!-- Header -->
    <section id="header" class="wrapper" style="height: 20em;">

        <!-- Logo -->
        <div id="logo">
            <h1><a href="/"><?= $cfg->siteName ?></a></h1>
        </div>

        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li class="current"><a href="/"><i class="fas fa-home"></i>   START</a></li>

                <?php

                if($loginStatus){
                    echo '<li>
                        <a href="/user"><i class="fas fa-child"></i> <b>'.session("username").'</b></a> <!-- Pobieramy z bazy danych nazwę użytkownika i ją tu wyświetlamy -->
                        <ul>
                            <li><a href="/user">PROFIL</a></li>
                             <!-- <li><a href="/user/inventory">EKWIPUNEK</a> -->
                            <li><a href="#">ZNAJOMI</a></li>
                            <li><a href="#">HISTORIA PŁATNOŚCI</a></li>
                            <li><a href="/user/settings">USTAWIENIA KONTA</a></li>
                        </ul>
                    </li>';
                }


                ?>


                <li>
                    <a href="/games"><i class="fas fa-gamepad"></i> STREFA GIER</a>
                    <ul>
                        <li><a href="/games">PRZEGLĄDAJ</a></li>
                        <li><a href="/games/top">RANKINGI</a>
                    </ul>
                </li>

                <li>
                    <a href="/store"><i class="fas fa-comment-dollar"></i>  RYNEK</a>

                </li>

                <li>
                    <a href="http://forum.ppz.local"><i class="fas fa-pen"></i>  FORUM</a>
                </li>


                <li>
                    <a href="#"><i class="far fa-address-card"></i>  O NAS</a>
                    <ul>
                        <li><a href="/contact">KONTAKT</a></li>
                        <li><a href="/faq">FAQ</a>
                    </ul>

                </li>
                <?php

                if($loginStatus){
                    echo '
                    <li>
                        <a href="/user/logout"><i class="fas fa-times-circle"></i>  WYLOGUJ</a>
                    </li>
                    ';
                }else{
                    echo '
                    <li>
                        <a href="/user/login"><i class="fas fa-sign-in-alt"></i>  ZALOGUJ</a>
                    </li>
                    ';
                }

                ?>


            </ul>
        </nav>

    </section>