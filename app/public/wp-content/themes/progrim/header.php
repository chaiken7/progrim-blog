<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
    <meta charset="<?php bloginfo("charset") ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Progrim</title>
    <?php wp_head(); ?>
</head>

<body>
    <?php wp_body_open(); ?>
    <!--HEADER-->
    <header class="header-nav">
        <div class="container-xl d-flex">
            <div class="brand me-auto">
                <a class="navbar-brand" href="<?php echo home_url() ;?>"><i class="fab fa-mdb fa-4x"></i></a>
            </div>
            <!--<div class="subscribe-header mt-2">
                <button type="button" class="btn btn-outline-danger d-md-inline-block shadow">Registrarse</button>
                <button type="button" class="btn btn-danger d-md-inline-block shadow">Suscribirse</button>
            </div>-->
        </div>
    </header>

    <!--NAVBAR-->
    <nav class="navbar navbar-expand-xl navbar-white bg-light border">
        <div class="container-xl justify-content-center justify-content-md-between">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item me-2 dropdown">
                        <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
                                class="fas fa-bars me-1"></i>

                            Temas
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Tecnología</a></li>
                            <li><a class="dropdown-item" href="#">Deportes</a></li>
                            <li><a class="dropdown-item" href="#">Historia</a></li>
                            <li><a class="dropdown-item" href="#">Cine y series</a></li>
                            <li><a class="dropdown-item" href="#">Marketing</a></li>
                            <li><a class="dropdown-item" href="#">Programación</a></li>
                            <li><a class="dropdown-item" href="#">Turismo</a></li>
                            <li><a class="dropdown-item" href="#">Gastronomia</a></li>
                            <li><a class="dropdown-item" href="#">Actualidad</a></li>
                        </ul>
                    </li>
                    <li class="nav-item me-2">
                        <a class="nav-link" href="#">Populares</a>
                    </li>
                    <li class="nav-item me-2">
                        <a class="nav-link" href="#">Blogs</a>
                    </li>
                    <li class="nav-item me-2 d-none d-sm-none d-md-block">
                        <a class="nav-link" href="#">Tecnología</a>
                    </li>
                    <li class="nav-item me-2 d-none d-sm-none d-md-block">
                        <a class="nav-link" href="#">Deportes</a>
                    </li>
                    <li class="nav-item me-2 d-none d-sm-none d-md-block">
                        <a class="nav-link" href="#">Actualidad</a>
                    </li>
                    <li class="nav-item me-2 d-none d-sm-none d-md-block">
                        <a class="nav-link" href="#">River Plate</a>
                    </li>
                    <li class="nav-item me-2 d-none d-sm-none d-md-block">
                        <a class="nav-link" href="#">Blockchain</a>
                    </li>
                    <li class="nav-item me-2 d-none d-sm-none d-md-block">
                        <a class="nav-link" href="#">Tecnología</a>
                    </li>
                    <li class="nav-item me-2 d-none d-sm-none d-md-block">
                        <a class="nav-link" href="#">Gastronomia</a>
                    </li>
                    <li class="nav-item me-2 d-none d-sm-none d-md-block">
                        <a class="nav-link" href="#">Exterior</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

