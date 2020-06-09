<?= view('partials/_header_slim_') ?>

    <!-- gRY -->
    <section id="highlights" class="wrapper style3">
        <div class="title">GRY</div>
        <div class="container">
            <div class="row aln-center">

                <?php foreach ($games as $g):?>

                    <div class="col-4 col-12-medium">
                        <section class="highlight">
                            <a href="#" class="image featured"><img style="min-height: 200px" src="<?= $g['icon'] ?>" alt="" /></a>
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
<?= view('partials/_footer_') ?>