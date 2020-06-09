<?= view('partials/_header_slim_') ?>
<!-- Sklep -->
<style>
    .image img{
        height: auto;
        max-height: 240px;
    }
</style>


<section id="highlights" class="wrapper style3">
    <div class="title">Sklep skinow</div>
    <div class="container">
        <div class="row aln-center">

            <?php

            foreach ($skins as $s){
                echo '
                    <div class="col-4 col-12-medium">
                        <section class="highlight">
                            <a href="#" class="image featured"><img src="/images/skins/'.$s->path.'" alt="'.$s->name.'" /></a>
                            <p>'.$s->name.'</p>
                            <p><a href="#"><b>'.$s->price.' ZŁ</b></a></p>
                            <ul class="actions">
                                <li><a href="/store/createOrder?id='.$s->id.'&t='.$t.'" class="button style1">Kup</a></li>
                            </ul>
                        </section>
                    </div>
                        ';
            }

            ?>

        </div>
    </div>
</section>
<?= view('partials/_footer_') ?>