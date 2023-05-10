<?php get_header() ?>

<!--ARTICULOS-->
<div class="page-content-area py-5">
    <div class="container-xl">
        <div class="row">
            <div class="col-md-7 col-lg-8">
                <div class="mb-3">
                    <div class="my-1">
                        <h1 class="h1"><?php the_title(); ?></h1>
                    </div>
                </div>
                <div class="entry-content pb-3">
                    <?php the_content(); ?>
                </div>
                <div class="single-post-widget border-light border-top pt-3 mt-3">
                    <h4>Compartir</h4>
                    <ul class="list-inline">
                        <li class="list-inline-item"><a class="rounded btn btn-primary btn-sm btn-fc text-light" href="#"><i class="me-1 fab fa-facebook-f"></i>Share</a></li>
                        <li class="list-inline-item"><a class="rounded btn btn-info btn-sm btn-twi text-light" href="#"><i class="me-1 fab fa-twitter"></i> Tweet</a></li>
                        <li class="list-inline-item"><a class="rounded btn btn-danger btn-sm text-light" href="#"><i class="me-1 fab fa-pinterest"></i>Pin it</a></li>
                    </ul>
                </div>
                <div class="single-post-widget border-light border-top pt-3 mt-3">
                    <h4>Tags</h4>
                    <ul class="entry-tags-share list-inline">
                        <li class="list-inline-item"><a class="mb-1 btn bg-light text-secondary bg-hover-danger text-hover-white bg-hover-danger text-hover-white" href="/category">Lifestyle</a></li>
                        <li class="list-inline-item"> <a class="mb-1 btn bg-light text-secondary bg-hover-danger text-hover-white" href="/category">Fashion</a></li>
                        <li class="list-inline-item"> <a class="mb-1 btn bg-light text-secondary bg-hover-danger text-hover-white" href="/category">Video</a></li>
                        <li class="list-inline-item"> <a class="mb-1 btn bg-light text-secondary bg-hover-danger text-hover-white" href="/category">Portfolio</a></li>
                    </ul>
                </div>
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
</div>

<?php get_footer() ?>