<?= view('partials/_header_slim_') ?>

<!-- Profile -->
<section id="main" class="wrapper style2">
    <div class="title"><?= session('username');  ?></div>
    <div class="container">

        <!-- Features -->
        <section id="features">
            <header class="style1">
                <h2><?= strtoupper(session('username'));  ?></h2>
<!--                <p>Literaki rank: #1 [2019] Challenge me!</p>-->
                <br>
                <div class="row aln-center">
                    <div class="col-6 col-12-small">
                        <section class="box" >
                            <a href="#" class=""><img  src="<?=   $gravatar;   ?>" alt="" /></a>
                        </section>
                    </div>
                </div>
<!--                <h2>O mnie</h2>-->
<!--                <p>tutaj uzytkownik może dodac opis o sobie, o profilu, cokolwiek chce. </p>-->
                <br>

                <h2>Rankingi</h2>
                <?php
                foreach ($stats as $game){
                    echo "<p><b>".strtoupper($game->game_name).":</b> ".$game->score." </p>";
                }

                ?>
                </ul></p>
                <h2>Ekwipunek</h2>
                <br>
                <style>
                    .owl-carousel .owl-item img{
                        width: auto;
                        max-height: 200px;
                    }
                </style>


                <div class="owl-carousel profile" id="skins">

                    <?php
                    foreach ($skins as $s){
                       echo '
                        <div>
                            <a href="#" class="image featured" >
                                <img src="images/skins/'.$s->path.'" alt="'.$s->name.'" />
                            </a>
                        </div>
                       ';
                    }

                    ?>


                </div>

                <div class="col-12">
                    <ul class="actions">
<!--                        <li><a href="ekw.html"><input type="submit" class="style1" value="EKWIPUNEK" /></a></li>-->
<!--                        <li><input type="submit" class="style1" value="ZAPROPONUJ WYMIANĘ" /></li>-->
<!--                        <li><input type="submit" class="style1" value="WIADOMOŚĆ" /></li>-->
<!--                        <li><input type="submit" class="style1" value="ZGŁOŚ" /></li>-->
                    </ul>
                </div>

            </header>
        </section>

    </div>
</section>
<?= view('partials/_footer_') ?>