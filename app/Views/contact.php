<?= view('partials/_header_slim_') ?>


    <!-- Footer -->
    <section id="footer" class="wrapper">

        <div class="title">KONTAKT</div>
        <div class="container">
            <header class="style1">
                <h2>Pytania?</h2>
                <p>
                    Skontaktuj się z działem pomocy technicznej w razie wątpliwości i pytań.
                </p>
            </header>
            <div class="row">
                <div class="row aln-center">

                    <!-- Contact Form -->
                    <section>
                        <form method="post" action="/contact">
                            <div class="row gtr-50">
                                <div class="col-6 col-12-small">
                                    <input type="text" name="name" id="contact-name" placeholder="Email" />
                                </div>
                                <div class="col-6 col-12-small">
                                    <input type="text" name="email" id="contact-email" placeholder="Problem" />

                                </div>
                                <div class="col-12">
                                    <textarea name="message" id="contact-message" placeholder="Opisz, w czym możemy Ci pomóc." rows="4"></textarea>
                                </div>
                                <div class="col-12">
                                    <ul class="actions">
                                        <li><input type="submit" class="style1" value="WYŚLIJ" /></li>
                                        <li><input type="reset" class="style2" value="WYCZYŚĆ" /></li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                    </section>

                </div>
                <div class="row aln-center">

                    <!-- Contact -->


                </div>
            </div>

        </div>
    </section>




<?= view('partials/_footer_') ?>