<?= view('partials/_header_slim_') ?>


    <section id="game" class="wrapper style2" style="display: flow-root;">
        <div class="title">GRA PONG</div>
        <info style="display: none"><?= session('username'); ?></info>

        <!------------------------------------------------------------------------->
        <iframe src="http://localhost:4000/" align="left" width="50%" height="600" > </iframe>
        <iframe src="http://localhost:3000/" id="chat" align="right" width="50%" height="500" > </iframe>
        <!------------------------------------------------------------------------->

    </section>

<?= view('partials/_footer_') ?>