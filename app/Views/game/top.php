<?= view('partials/_header_slim_') ?>


<!-- Intro -->
<section id="highlights" class="wrapper style3">
    <div class="title">Najlepsi gracze</div>


    <?php

        foreach ($data as $k => $d){
            $c=1;
            if(empty($d)){
                //No data
                echo '
                <h3 align="center">'.strtoupper($k).'</h3>
                 <div class="container" style="text-align: center">
                        <div class="row aln-center" style="background-color: #e6e6e6; border-radius: 45px;">
                    <div class=\"col-3 col-3-medium\">
                        <section class=\"highlight\">
                            <p>No data</p> 
                            <br>
                        </section>
                    </div>
                            </div>
                        </div>
                        <br><br>
                ';
            }else{
            echo '
            
                <h3 align="center">'.strtoupper($k).'</h3>
                <div class="container" style="text-align: center">
                    <div class="row aln-center" style="background-color: #e6e6e6; border-radius: 45px;">
            
                        <div class="col-3 col-3-medium">
                            <section class="highlight">
                                <p>Place</p>';

                                foreach ($data[$k] as $score){
                                    echo '<p>'.$c++.'</p>';
                                }

                            echo '</section>
                        </div>
            
                        <div class="col-3 col-3-medium">
                            <section class="highlight">
                            <p>Username</p>';
                            foreach ($data[$k] as $score){
                                echo '<p>'.$score->user_username.'</p>';
                            }

                            echo '</section>
                        </div>
            
                        <div class="col-3 col-3-medium">
                            <section class="highlight">
                                <p>Score(summary)</p>';
                                foreach ($data[$k] as $score){
                                    echo '<p>'.$score->score.'</p>';
                                }
                                echo '
                            </section>
                            <br>
                        </div>
                    </div>
                </div>
            <br><br>
            ';
            }
        }

    ?>

</section>

<?= view('partials/_footer_') ?>