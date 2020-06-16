<!-- Footer -->
<section id="footer" class="wrapper">

    <div class="container">
        <p><a href="/contact">Kontakt</a></p>
        <p><a href="/rodo">Rodo</a></p>
        <p><a href="/faq">FAQ</a></p>
        <p><a href="/regulamin">Regulamin</a></p>
        <div id="copyright">
            <ul>
                <li>&copy; GOŁĘBNIK</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
            </ul>
        </div>
    </div>
</section>

</div>

<!-- Scripts -->
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/jquery.dropotron.min.js"></script>
<script src="/assets/js/browser.min.js"></script>
<script src="/assets/js/breakpoints.min.js"></script>
<script src="/assets/js/util.js"></script>
<?php

    if(isset($includeJS)){
        foreach ($includeJS as $js){
           echo ' <script src="/assets/js/'.$js.'.js"></script>';
        }
    }
?>
<script src="/assets/js/main.js"></script>


</body>
</html>


