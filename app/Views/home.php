<?= view('partials/_header_') ?>



    <!-- Intro -->
    <section id="intro" class="wrapper style1">
        <div class="title">STREFA GIER</div>
        <div class="container">
            <p class="style2">
                Gołębnik to Twoja strefa gier</a>
            </p>
            <p class="style3">Rywalizuj ze znajomymi, kupuj skiny i pnij się w rangingu gier!</p>
            <ul class="actions">
                <li><a href="#highlights" class="button style3 large"><i class="fas fa-arrow-down"></i> ZOBACZ JAK <i class="fas fa-arrow-down"></i></a></li>
            </ul>
        </div>
    </section>

    <!-- gRY -->
    <section id="highlights" class="wrapper style3">
        <div class="title">GRY</div>
        <div class="container">
            <div class="row aln-center">

                <?php foreach ($games as $g):?>

                    <div class="col-4 col-12-medium">
                        <section class="highlight">
                            <a href="#" class="image featured"><img src="<?= $g['icon'] ?>" alt="" /></a>
                            <h3><a href="#"><?= $g['display_name'] ?></a></h3>
                            <p><?= $g['description'] ?></p>
                            <ul class="actions">
                                <li><a href="/game/play/<?= $g['name'] ?>" class="button style1">GRAJ</a></li>
                            </ul>
                        </section>
                    </div>

                <?php endforeach;?>

            </div>
        </div>
    </section>

    <!-- Rynek -->
    <section id="main" class="wrapper style2">
        <div class="title">RYNEK</div>
        <div class="container">



            <!-- Features -->
            <section id="features">
                <header class="style1">
                    <h2>Przegląd rynku</h2>
                    <p>Kupuj skiny i ulepszaj swoj ekwipunek - dzięki nim zagrasz z dopasowanymi iteami wg swoich preferencji.</p>
                </header>

                <!-- Image carousel -->

                <style>
                    .owl-carousel .owl-item img{
                        width: auto;
                        max-height: 200px;
                    }
                </style>


                <div class="owl-carousel" id="skinsShow">

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



                <!-- <div class="feature-list">
                    <div class="row">
                        <div class="col-6 col-12-medium">
                            <section>
                                <h3 class="icon fa-comment">Mattis velit diam vulputate</h3>
                                <p>Eget mattis at, laoreet vel et velit aliquam diam ante, aliquet sit amet vulputate et magna feugiat laoreet vel velit lorem.</p>
                            </section>
                        </div>
                        <div class="col-6 col-12-medium">
                            <section>
                                <h3 class="icon solid fa-sync">Lorem ipsum dolor sit veroeros</h3>
                                <p>Eget mattis at, laoreet vel et velit aliquam diam ante, aliquet sit amet vulputate et magna feugiat laoreet vel velit lorem.</p>
                            </section>
                        </div>
                        <div class="col-6 col-12-medium">
                            <section>
                                <h3 class="icon fa-image">Pretium phasellus justo lorem</h3>
                                <p>Eget mattis at, laoreet vel et velit aliquam diam ante, aliquet sit amet vulputate et magna feugiat laoreet vel velit lorem.</p>
                            </section>
                        </div>
                        <div class="col-6 col-12-medium">
                            <section>
                                <h3 class="icon solid fa-cog">Tempus sed pretium orci</h3>
                                <p>Eget mattis at, laoreet vel et velit aliquam diam ante, aliquet sit amet vulputate et magna feugiat laoreet vel velit lorem.</p>
                            </section>
                        </div>
                        <div class="col-6 col-12-medium">
                            <section>
                                <h3 class="icon solid fa-wrench">Aliquam consequat et feugiat</h3>
                                <p>Eget mattis at, laoreet vel et velit aliquam diam ante, aliquet sit amet vulputate et magna feugiat laoreet vel velit lorem.</p>
                            </section>
                        </div>
                        <div class="col-6 col-12-medium">
                            <section>
                                <h3 class="icon solid fa-check">Dolore laoreet aliquam mattis</h3>
                                <p>Eget mattis at, laoreet vel et velit aliquam diam ante, aliquet sit amet vulputate et magna feugiat laoreet vel velit lorem.</p>
                            </section>
                        </div>
                    </div>
                </div> -->
                <ul class="actions special">
                    <li><a href="/store" class="button style1 large">WIĘCEJ</a></li>
                </ul>
            </section>

        </div>
    </section>

    <!-- Rankingi -->
    <section id="highlights" class="wrapper style3">
        <div class="title">RANKINGI</div>
        <div class="container">
            <div class="row aln-center">


                <?php

                foreach ($data as $k => $d){
                    if(empty($d)){
                        //No data
                        echo '
                        <div class="col-4 col-12-medium">
                            <section class="highlight">
                                <h3><a href="#"><i class="fas fa-crown"></i> '.strtoupper($k).' TOP5</a></h3>
                                <p><ul>
                                    <li><b>No data</b></li>
                                </ul></p>

                            </section>
                        </div>
                        ';
                    }else{
                        echo '
                        <div class="col-4 col-12-medium">
                            <section class="highlight">
                                <h3><a href="#"><i class="fas fa-crown"></i> '.strtoupper($k).' TOP5</a></h3>
                                <p><ul>';
                                    foreach ($data[$k] as $score){
                                        echo '<li>'.$score->user_username.': <b>'.$score->score.'</b></li>';
                                    }
                                echo '</ul></p>

                            </section>
                        </div>
                        ';
                    }
                }

                ?>




<!---->
<!---->
<!---->
<!--                <div class="col-4 col-12-medium">-->
<!--                    <section class="highlight">-->
<!--                        <h3><a href="#"><i class="fas fa-crown"></i> LITERAKI TOP5</a></h3>-->
<!--                        <p><ul>-->
<!--                            <li>gABEN5678_8  <b>7890 pkt </b></li>-->
<!--                            <li>Atarix_90  <b>6788 pkt </b></li>-->
<!--                            <li>meganoo_r6 <b>5678 pkt </b></li>-->
<!--                            <li>ukulele  <b>3455 pkt </b></li>-->
<!--                            <li>przemm5  <b>3450 pkt </b></li>-->
<!--                        </ul></p>-->
<!--                        <ul class="actions">-->
<!--                            <li><a href="#" class="button style1">PEŁNY RANKING</a></li>-->
<!--                        </ul>-->
<!--                    </section>-->
<!--                </div>-->
<!--                <div class="col-4 col-12-medium">-->
<!--                    <section class="highlight">-->
<!--                        <h3><a href="#"><i class="fas fa-crown"></i> PONG TOP5</a></h3>-->
<!--                        <p><ul>-->
<!--                            <li>pawelek_56 <b>9000 pkt </b></li>-->
<!--                            <li>r6_t6  <b>5432 pkt </b></li>-->
<!--                            <li>wieprz_69  <b>3456 pkt  </b></li>-->
<!--                            <li>robertooo_x4  <b>2345 pkt  </b></li>-->
<!--                            <li>galaxic_top_9  <b>2340 pkt </b></li>-->
<!--                        </ul></p>-->
<!--                        <ul class="actions">-->
<!--                            <li><a href="#" class="button style1">PEŁNY RANKING</a></li>-->
<!--                        </ul>-->
<!--                    </section>-->
<!--                </div>-->



            </div>


            <div class="row aln-center" style="margin-top: 50px">

                <p><a href="/games/top" class="button style1">PEŁNY RANKING</a></p>

            </div>



        </div>
    </section>

<?= view('partials/_footer_') ?>

