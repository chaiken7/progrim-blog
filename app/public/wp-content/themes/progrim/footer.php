    <!--FOOTER-->
    <footer class="bg-danger border">
        <div class="w-100 bg-light py-3">
            <div class="container">
                <div class="form-nt border-bottom mt-3">
                    <div class="row pt-2">
                        <div class="col-lg-6 col-sm-12">
                            <h3 class="flex-fill">Suscribite a nuestro boletín</h3>
                            <p>Recibí las ultimas noticias, artículos y recursos en tu Email.</p>
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <form action="#" class="row flex-fill">
                                <div class="col-lg-7 my-md-2 my-2">
                                    <input type="email" class="form-control px-4 border w-100 text-center text-md-left" id="email" placeholder="Ingresa tu Email" name="email">
                                </div>
                                <div class="col-lg-5 my-md-2 my-2">
                                    <button type="submit" class="btn btn-danger btn-lg border w-100 shadow">Suscribirse</button>
                                </div>
                                <div class="col-lg-12 mt-2">
                                    <p>Entiendo que los datos que envío se utilizarán para proporcionarme los productos
                                        y/o servicios descritos anteriormente y las comunicaciones relacionadas con los
                                        mismos.</p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="foot mt-3 mn-3">
                    <div class="row pt-2">
                        <div class="col-lg-6 col-sm-12">
                            <p class="text-lg-start text-center text-dark light-300">
                                © Copyright 2022 ProGrim. Todos los derechos reservados.
                            </p>
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <p class="text-lg-end text-center text-dark light-300">
                                Diseñado por <a rel="sponsored" class="text-decoration-none text-dark" href="https://cursophp.com.ar/" target="_blank"><strong>GRIM Company</strong></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <?php wp_footer(); ?>
    <!--ISOTOPE-->
    <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
    <script>
        var $grid = $('.grid').isotope({
            // options
            itemSelector: '.grid-item',
            layoutMode: 'fitRows'
        });

        $('.filter-button-group').on('click', 'button', function() {
            var filterValue = $(this).attr('data-filter');
            $grid.isotope({
                filter: filterValue
            });
        });
    </script>
    </body>

    </html>