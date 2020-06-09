<?= view('partials/_header_slim_') ?>

    <link rel="stylesheet" href="/assets/games/2048/style.css">


    <section id="" class="wrapper style3">


        <div class="container">
            <div class="heading">
                <h1 class="title">2048</h1>
                <div class="score-container" style="box-sizing: initial">0</div>
            </div>
            <p class="game-intro">Join the numbers and get to the <strong>2048 tile!</strong></p>

            <div class="game-container">
                <div class="game-message">
                    <p></p>
                    <div class="lower">
                        <a class="retry-button">Try again</a>
                    </div>
                </div>

                <div class="grid-container">
                    <div class="grid-row">
                        <div class="grid-cell"></div>
                        <div class="grid-cell"></div>
                        <div class="grid-cell"></div>
                        <div class="grid-cell"></div>
                    </div>
                    <div class="grid-row">
                        <div class="grid-cell"></div>
                        <div class="grid-cell"></div>
                        <div class="grid-cell"></div>
                        <div class="grid-cell"></div>
                    </div>
                    <div class="grid-row">
                        <div class="grid-cell"></div>
                        <div class="grid-cell"></div>
                        <div class="grid-cell"></div>
                        <div class="grid-cell"></div>
                    </div>
                    <div class="grid-row">
                        <div class="grid-cell"></div>
                        <div class="grid-cell"></div>
                        <div class="grid-cell"></div>
                        <div class="grid-cell"></div>
                    </div>
                </div>

                <div class="tile-container">

                </div>
            </div>

            <p class="game-explanation">
                <strong class="important">How to play:</strong> Use your <strong>arrow keys</strong> to move the tiles. When two tiles with the same number touch, they <strong>merge into one!</strong>
            </p>
            <hr>
            <p>
                Created by <a href="http://gabrielecirulli.com" target="_blank">Gabriele Cirulli.</a> Based on <a href="https://itunes.apple.com/us/app/1024!/id823499224" target="_blank">1024 by Veewo Studio</a> and conceptually similar to <a href="http://asherv.com/threes/" target="_blank">Threes by Asher Vollmer.</a>
            </p>
        </div>

    </section>




    <!--    By: https://codepen.io/camsong/pen/wcKrg-->


    <script type="application/javascript" src="/assets/games/2048/hammer.js"></script>
    <script type="application/javascript" src="/assets/games/2048/game.js"></script>

<?= view('partials/_footer_') ?>