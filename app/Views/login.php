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
    <title><?= $cfg->siteName ?>/LOGOWANIE</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="/assets/css/main.css" />


    <link rel="apple-touch-icon" sizes="180x180" href="/images/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/images/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
</head>
<body class="homepage is-preload body_bg">
<div id="page-wrapper ">

    <section id="main" class="wrapper ">

        <div class="container ">
            <header class="style1">
                <h2>LOGOWANIE</h2>
                <p>
                    Zaloguj się na swoje konto
                </p>
            </header>
            <div class="row aln-center">
                <div class="row aln-center">

                    <section>


                        <div class="row gtr-50" style="padding-bottom: 20px;color: darkgreen;text-align: center;">
                            <div class="col-12">
                                <?= session('register_msg_ok');  ?>
                            </div>
                        </div>

                        <form method="post" action="/user/auth">

                            <div class="row gtr-50">
                                <div class="col-12"> Nazwa użytkownika lub mail
                                    <input type="text" name="login" id="login-username" placeholder="Nazwa użytkownika" required/>
                                </div>
                            </div>

                            <div class="row gtr-50">
                                <div class="col-12"> Hasło
                                    <input type="password" name="pass" id="login-pass" placeholder="Hasło" required/>
                                </div>
                            </div>
                            <p style="color: #ff0000;"><?= session('login_status') ?></p>
                            <div class="col-12" style="margin-top: 2em;">
                                <input type="submit" class="style1" value="ZALOGUJ" />
                                <ul class="actions">
                                    <p></p>
                                    <li></li>
                                </ul>
                            </div>


                            <div class="row aln-center">
                                <div class="col-12">
                                    <p></p>
                                    <p>Nie masz konta? <a href="/user/register">Zarejestruj się.</a>
                                        <br><a href="#resetowanie">Nie mogę się zalogować</a></p>
                                </div>
                            </div>



                        </form>

                        <div id="copyright2">
                            <ul>
                                <li>&copy; GOŁĘBNIK</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
                            </ul>
                        </div>

                    </section>

                </div>

            </div>

        </div>

        <!-- Scripts -->
        <script src="/assets/js/jquery.min.js"></script>
        <script src="/assets/js/jquery.dropotron.min.js"></script>
        <script src="/assets/js/browser.min.js"></script>
        <script src="/assets/js/breakpoints.min.js"></script>
        <script src="/assets/js/util.js"></script>
        <script src="/assets/js/main.js"></script>

</body>
</html>