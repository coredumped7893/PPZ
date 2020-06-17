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
    <title><?= $cfg->siteName ?>/REJESTRACJA</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="/assets/css/main.css" />


    <link rel="apple-touch-icon" sizes="180x180" href="/images/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/images/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
</head>
<body class="homepage is-preload body_bg">
<div id="page-wrapper">

    <section id="main" class="wrapper">

        <div class="container">
            <header class="style1">
                <h2>REJESTRACJA</h2>
                <p>
                    Zrejestruj się i dołącz do darmowej rozrywki on-line!
                </p>
            </header>
            <div class="row aln-center">
                <div class="row aln-center">

                    <section>

                        <form method="post" action="/user/saveuser" id="register-form" >

                            <div class="row gtr-50">
                                <div class="col-12"> Nazwa użytkownika
                                    <input type="text" name="username" id="register-username" placeholder="Nazwa użytkownika" required/>
                                    <span id="avail" style="color: darkgreen;display: none">login1234 jest dostepny</span>
                                </div>
                            </div>
<!---->
<!--                            <div class="row gtr-50">-->
<!--                                <div class="col-12"> Email-->
<!--                                    <input type="email" name="email" id="register-email" placeholder="Email" required />-->
<!--                                </div>-->
<!--                            </div>-->

                            <div class="row gtr-50">
                                <div class="col-12"> Hasło
                                    <input type="password" name="pass" id="register-pass" placeholder="Hasło" required/>
                                </div>
                            </div>

                            <div class="row gtr-50">
                                <div class="col-12"> Powtórz hasło
                                    <input type="password" name="pass2" id="register-pass2" placeholder="Powtórz hasło" required/>
                                </div>
                                <p style="color: #DC143C;"><?=  session('register_msg');  ?></p>
                            </div>




                            <div class="col-12" style="margin-top: 1em;">
                                <input type="submit" class="style1" value="REJESTRUJ" />
                                <ul class="actions">
                                    <p></p>
                                    <li></li>
                                </ul>
                            </div>


                            <div class="row aln-center">
                                <div class="col-12">
                                    <p></p>
                                    <p>Masz już konto? <a href="/user/login">Zaloguj się</a></p>
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