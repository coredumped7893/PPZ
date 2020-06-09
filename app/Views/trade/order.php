<?= view('partials/_header_slim_') ?>


    <section id="" class="wrapper style3">
        <div class="title">Podsumowanie płatności</div>
        <div class="container" style="text-align: center">

                   <?php

                   if(($payment['GET'] == '' || $payment['GET'] == NULL) && $payment["status"]->status != 'CANCELED' ){
                       echo ' <div class="row aln-center" id="msg_ok" style="background-color: #c1d4db; border-radius: 45px;">
                        <div style="width: 50%;margin-bottom: 50px;color: #0e0e0e">
                        <i class="fa fa-clock-o animate__animated animate__pulse animate__repeat-3" aria-hidden="true"></i>
                        <p>Dziękujemy za zakup!</p>
                        <p>Czekamy na potwierdzenie płatności, przedmioty zostaną dodane jak tylko dostaniemy potwierdzenie</p>
                         <p>Obecny status płatności: <b id="current_status">'.$payment["status"]->status.'</b></p>
                         <p> <div class="load-container load3" style="height: 65px;"><div class="loader">Loading...</div></div> </p>
                         <p id="err_" style="color: black;display: none">Wystapił problem przy płatności :(</p>
                         <p id="ok_" style="color: black;display: none">Przedmioty zostały dodane do twojego konta</p>
                         <p> <a class="button" href="/user" style="background-color: #017369;color: #0e0e0e;display: none">OK</a> </p>
                       ';
                   }else{
                       echo ' <div class="row aln-center" id="msg_err" style="background-color: #f7f387; border-radius: 45px;">
                        <div style="width: 50%;margin-bottom: 0px;color: #0e0e0e">
                        <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                        <p>Wystapił problem przy płatności lub została anulowana</p>
                       ';
                   }
                   ?>
               </div>
            </div>
        </div>

    </section>



<?= view('partials/_footer_') ?>