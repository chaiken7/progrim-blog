<?php get_header() ?>
<div class="block-info mt-4">
    <div class="container-xl">
        <div class="row">
            <div class="col-sm-7 col-lg-8 col-md-7">
                <?php 
                    previous_posts_link();
                    next_post_link();
                ?>
                <?php
                $catURL = $cat;
                $args = array(
                    "post_type" => array("articulo"),
                    "cat" => $catURL
                );

                $the_query = new WP_Query($args);

                if ($the_query->have_posts()) : while ($the_query->have_posts()) : $the_query->the_post(); ?>

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

                    <?php endwhile;?>
                <?php else : ?>
                <?php endif; ?>

            </div>
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
</div>

<?php get_footer() ?>