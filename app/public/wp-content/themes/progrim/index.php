<?php get_header() ?>

<!--ULTIMAS-->
<div class="container-xl pt-4">
    <div class="row mb-4">
        <!--Ultimo post-->
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-6 border-bottom">
            <?php

            $args = array(
                "post_type" => array("articulo"),
                "posts_per_page" => 1
            );

            $articulos = new WP_Query($args);
            ?>
            <?php if ($articulos->have_posts()) { ?>
                <?php while ($articulos->have_posts()) {
                    $articulos->the_post(); ?>
                    <div class="card mb-4 mt-4 position-relative">
                        <a href="<?php the_permalink(); ?>">
                            <div class="feature-image">
                                <div class="image-frame">
                                    <?php the_post_thumbnail('post-thumbnail', array('class' => 'card-img-top zoom')) ?>
                                </div>
                            </div>
                        </a>
                        <div class="card-body">
                            <div class="card-text" href=""><? the_category(); ?></div>
                            <a href="<?php the_permalink(); ?>">
                                <h2 class="card-title" id="title-principal"><?php the_title(); ?></h2>
                            </a>
                            <p class="card-text" id="text-content"><?php the_excerpt(); ?></p>
                        </div>
                    </div>
                <?php } ?>
            <?php } ?>
        </div>
        <!--Ultimos posts-->
        <div class="col-sm-12 col-md-12 col-xl-3">
            <div class="row h-100">
                <?php

                $args = array(
                    "post_type" => array("articulo"),
                    "posts_per_page" => 2,
                    "offset" => 1
                );

                $articulos = new WP_Query($args);
                ?>
                <?php if ($articulos->have_posts()) { ?>
                    <?php while ($articulos->have_posts()) {
                        $articulos->the_post(); ?>
                        <div class="col-sm-6 col-md-6 col-xl-12 border-bottom">
                            <div class="card mt-4">
                                <a href="<?php the_permalink(); ?>">
                                    <div class="feature-image">
                                        <div class="image-frame">
                                            <?php the_post_thumbnail('post-thumbnail', array('class' => 'card-img-top zoom')) ?>
                                        </div>
                                    </div>
                                </a>
                                <div class="card-body">
                                    <div class="card-text" href=""><? the_category(); ?></div>
                                    <a href="<?php the_permalink(); ?>">
                                        <h2 class="card-title"><?php the_title(); ?></h2>
                                    </a>
                                    <p class="card-text d-block d-sm-block"><?php the_excerpt(); ?></p>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                <?php } ?>
            </div>
        </div>
        <div class="col-sm-12 col-md-12 col-xl-3">
            <div class="row h-100">
                <?php

                $args = array(
                    "post_type" => array("articulo"),
                    "posts_per_page" => 2,
                    "offset" => 3
                );

                $articulos = new WP_Query($args);
                ?>
                <?php if ($articulos->have_posts()) { ?>
                    <?php while ($articulos->have_posts()) {
                        $articulos->the_post(); ?>
                        <div class="col-sm-6 col-md-6 col-xl-12 border-bottom">
                            <a href="<?php the_permalink(); ?>">
                                <div class="card mt-4">
                                    <div class="feature-image">
                                        <div class="image-frame">
                                            <?php the_post_thumbnail('post-thumbnail', array('class' => 'card-img-top zoom')) ?>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="card-text" href=""><? the_category(); ?></div>
                                        <a href="<?php the_permalink(); ?>">
                                            <h2 class="card-title"><?php the_title(); ?></h2>
                                        </a>
                                        <p class="card-text d-block d-sm-block"><?php the_excerpt(); ?></p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php } ?>
                <?php } ?>
            </div>
        </div>
    </div>
    <div class="row">
        <?php

        $args = array(
            "post_type" => array("articulo"),
            "posts_per_page" => 4,
            "offset" => 5
        );

        $articulos = new WP_Query($args);
        ?>
        <?php if ($articulos->have_posts()) { ?>
            <?php while ($articulos->have_posts()) {
                $articulos->the_post(); ?>
                <div class="col-sm-6 col-md-6 col-lg-3 border-bottom">
                    <div class="card mb-4 mt-4">
                        <a href="<?php the_permalink(); ?>">
                            <div class="feature-image">
                                <div class="image-frame">
                                    <?php the_post_thumbnail('post-thumbnail', array('class' => 'card-img-top zoom')) ?>
                                </div>
                            </div>
                        </a>
                        <div class="card-body">
                            <div class="card-text" href=""><? the_category(); ?></div>
                            <a href="<?php the_permalink(); ?>">
                                <h2 class="card-title"><?php the_title(); ?></h2>
                            </a>
                            <p class="card-text"><?php the_excerpt(); ?></p>
                        </div>
                    </div>
                </div>
            <?php } ?>
        <?php } ?>
    </div>
</div>

<!--TRENDING-->
<div class="block-info mt-4">
    <div class="container-xl">
        <div class="row">
            <div class="col-sm-7 col-lg-8 col-md-7">
                <?php

                $args = array(
                    "post_type" => array("articulo"),
                    "posts_per_page" => 5,
                    "offset" => 9
                );

                $articulos = new WP_Query($args);
                ?>
                <?php if ($articulos->have_posts()) { ?>
                    <?php while ($articulos->have_posts()) {
                        $articulos->the_post(); ?>
                        <article class="article card mb-4 mt-4 blog-style2">
                            <div class="feature-image">
                                <div class="image-frame">
                                    <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('post-thumbnail', array('class' => 'img-fluid zoom rounded-start h-100')) ?></a>
                                </div>
                            </div>
                            <div class="card-body align-items-center">
                                <div class="card-text" href=""><? the_category(); ?></div>
                                <a href="<?php the_permalink(); ?>">
                                    <h2 class="card-title mb-4"><?php the_title(); ?></h2>
                                </a>
                                <p class="card-text mb-5"><?php the_excerpt(); ?></p>
                                <p class="card-text"><small class="text-date">Publicado el <?php the_date(); ?></small></p>
                            </div>
                        </article>
                    <?php } ?>
                <?php } ?>
            </div>
            <!--Start trending-->
            <div class="col-sm-5 col-lg-4 col-md-5">
                <div class="sidebar-widget mb-3 border border-light rounded">
                    <div class="wrapper rounded bg-light">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-title-block d-flex pb-3">
                                    <h3 class="section-widget-title me-auto">
                                        Tendencias
                                    </h3>
                                    <a class="text-uppercase section-title-link" href="/">Ver todo<i class="fa-solid fa-arrow-right ms-1 mt-2"></i></a>
                                </div>
                            </div>
                        </div>
                        <?php

                        $args = array(
                            "post_type" => array("articulo"),
                            "posts_per_page" => 5,
                            'orderby' => 'comment_count'
                        );

                        $articulos = new WP_Query($args);
                        ?>
                        <?php if ($articulos->have_posts()) { ?>
                            <?php while ($articulos->have_posts()) {
                                $articulos->the_post(); ?>
                                <article class="article-trending card border-bottom">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('post-thumbnail', array('class' => 'img-fluid zoom rounded-start')) ?></a>
                                        </div>
                                        <div class="col-md-6 ms-md-4 col-xl-7">
                                            <div class="card-body">
                                                <div class="card-text" href=""><? the_category(); ?></div>
                                                <a href="<?php the_permalink(); ?>">
                                                    <h2 class="card-title-trending mb-2"><?php the_title(); ?></h2>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            <?php } ?>
                        <?php } ?>
                    </div>
                    <div class="wrapper rounded bg-light mt-4 border-bottom">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-title-block d-flex pb-3">
                                    <h3 class="section-widget-title me-auto">
                                        Tag Cloud
                                    </h3>
                                    <a class="text-uppercase section-title-link" href="/">Ver todo<i class="fa-solid fa-arrow-right ms-1 mt-2"></i></a>
                                </div>
                            </div>
                            <div class="tagcloud">
                                <?php $settings = array(
                                    'smallest' => 16,
                                    'largest' => 24,
                                    'unit' => 'px',
                                    'number' => 0,
                                    'format' => 'flat',
                                    'orderby' => 'name',
                                    'order' => 'ASC',
                                    'exclude' => '',
                                    'include' => '',
                                    'link' => 'view',
                                    'echo' => true
                                );

                                wp_tag_cloud($settings);
                                ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--CATEGORIAS-->
<section class="service-wrapper py-3">
    <div class="container-fluid">
        <div class="row">
            <h2 class="h3 text-center col-12 py-5 semi-bold-600">POST MAS POPULARES</h2>
        </div>
    </div>
    <div class="service-tag py-3 bg-light border">
        <div class="col-md-12">
            <ul class="nav d-flex justify-content-center">
                <li class="nav-item mx-lg-4">
                    <a class="filter-btn nav-link btn-outline-danger active shadow rounded-pill text-dark px-4 
						light-300" href="#" data-filter=".todo">Todo</a>
                    <!-- btn-outline = boton transparente -->
                </li>
                <?php
                $categories = get_categories();
                foreach ($categories as $category) {
                    echo '<li class="nav-item mx-lg-4">
    <a class="filter-btn nav-link btn-outline-danger rounded-pill text-dark px-4 light-300" href="#" data-filter=".' . $category->slug . '">' . $category->name . '</a>
</li>';
                } ?>
            </ul>
        </div>
    </div>
</section>
<section class="container-xl overflow-hidden py-5">
    <div class="row gx-5 gx-sm-3 gx-lg-5 gy-lg-5 gy-3 pb-3 todos">

        <!-- Comienzan las noticias-->
        <?php

        $args = array(
            "post_type" => array("articulo"),
            "posts_per_page" => '16'
        );

        $articulos = new WP_Query($args);
        ?>
        <?php if ($articulos->have_posts()) { ?>
            <?php while ($articulos->have_posts()) {
                $articulos->the_post(); ?>
                <div class="col-xl-3 col-md-6 col-sm-6 todo border-bottom grid-item 
        <?php $categories = get_the_category(get_the_id());
                foreach ($categories as $category) {
                    echo $category->slug, '';
                } ?>">
                    <div class="card">
                        <a href="<?php the_permalink(); ?>">
                            <div class="feature-image">
                                <div class="image-frame">
                                    <?php the_post_thumbnail('post-thumbnail', array('class' => 'img-fluid zoom rounded-start')) ?>
                                </div>
                            </div>
                        </a>
                        <div class="card-body">
                            <div class="card-text" href=""><? the_category(); ?></div>
                            <a href="<?php the_permalink(); ?>">
                                <h2 class="card-title"><?php the_title(); ?></h2>
                            </a>
                            <p class="card-text"><?php the_excerpt(); ?></p>
                        </div>
                    </div>
                </div>

            <?php } ?>
        <?php } ?>

    </div>
</section>

<?php get_footer() ?>