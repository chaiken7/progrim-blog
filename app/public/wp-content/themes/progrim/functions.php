<?php

function pg_assets()
{

    wp_register_style("google-font", "https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,500&display=swap", array(), false, 'all');
    wp_register_style("bootstrap", "https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css", array(), "5-2-3", 'all');

    wp_enqueue_style("estilos", get_template_directory_uri() . "/assets/css/style.css", array("google-font", "bootstrap"));


    wp_register_script("isotope", "https://cdnout.com/jquery.isotope", array(), "j-query", "all");
    wp_register_script("bootstrap-js", "https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js", array(), "5-2-3", "all");
    wp_register_script("j-query", "https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js", array(), false, "all");
    wp_register_script("awesome", "https://kit.fontawesome.com/353e32dfd1.js", array(), "false", 'all');


    wp_enqueue_script("progrim-js", get_template_directory_uri() . "/assets/js/script.js", array("isotope", "j-query", "bootstrap-js", "awesome"));
}

add_action("wp_enqueue_scripts", "pg_assets");

function pg_theme_supports()
{
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_theme_support(
        'custom-logo',
        array(
            "width" => 170,
            "height" => 35,
            "flex-width" => true,
            "flex-height" => true,
        )
    );
}

add_action("after_setup_theme", "pg_theme_supports");



function pg_add_custom_post_type()
{

    $labels = array(
        'name' => 'Articulos',
        'singular_name' => 'Articulo',
        'all_items' => 'Todos los articulos',
        'add_new' => 'Agregar Nuevo Articulo'
    );

    $args = array(
        'labels'             => $labels,
        'description'        => 'Entradas del blog.',
        'public'             => true,
        'publicly_queryable' => true,
        'show_in_menu'       => true,
        'query_var'          => true,
        'rewrite'            => array('slug' => 'articulo'),
        'capability_type'    => 'post',
        'has_archive'        => true,
        'hierarchical'       => false,
        'menu_position'      => 5,
        'supports'           => array('title', 'editor', 'author', 'thumbnail', 'comments'),
        'taxonomies'         => array('category', 'post_tag'),
        'show_in_rest'       => true,
        'menu_icon'          => 'dashicons-welcome-write-blog'
    );


    register_post_type('articulo', $args);
}

add_action("init", "pg_add_custom_post_type");

function new_excerpt_length($length)
{
    return 20;
}
add_filter("excerpt_length", "new_excerpt_length");

function plz_add_sidebar(){
    register_sidebar(
        array(
            'name' => 'Pie de página',
            'id' => 'pie-pagina',
            'before_widget' => '',
            'after_widget' => ''
        )
    );
}

add_action("widgets_init","plz_add_sidebar");





