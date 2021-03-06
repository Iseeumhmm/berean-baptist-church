<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Berean_Baptist_Church
 */

?>

<!doctype html>
<html class="mt-0" <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?> >
    <div id="page" class="site">
        <header id="masthead" class="site-header">
			<div class="container-fluid">
				<div class="row justify-content-around">
					<div class="col-md-12 col-lg-11 col-xl-10">
						<nav class="navbar navbar-expand-xl navbar-light">
							<div class="logo">
							<a href="<?php echo get_site_url() ?>/"><img class="logo-image" src="<?php echo get_template_directory_uri()?>/images/berean_baptist-logo.png" alt="Logo"></a>
								<!-- <h1 href="<?php echo get_site_url() ?>/" class="navbar-brand"><h1>Berean Baptist Church</h1></a> -->
								<!-- <p class="londonOntario">London, Ontario</p> -->
							</div>
							<button class="navbar-toggler mr-md-7" data-toggle="collapse" data-target="#navbarMenu">
								<!-- <span class="navbar-toggler-icon"></span> -->
								<span class="navbar-menu-text">Menu</span>
							</button>
							<div class="phone"><a href="tel: 519 685 5414">519 685 5414</a></div>
							<div class="collapse navbar-collapse" id="navbarMenu">
								<div class="navbar-nav ml-auto navbar-mobile-center">
									<ul class="navbar-nav ml-auto">
										<li class="nav-item">
											<a href="<?php echo get_site_url() ?>/sermons" class="nav-link">Sermons</a>
										</li>
										<li class="nav-item">
											<a href="<?php echo get_site_url() ?>/27nt60" class="nav-link">27NT60</a>
										</li>
										<li class="nav-item">
											<a href="<?php echo get_site_url() ?>/donations" class="nav-link">Donations</a>
										</li>
										<li class="nav-item">
											<a href="<?php echo get_site_url() ?>/about" class="nav-link">About</a>
										</li>
										<li class="nav-item">
											<a href="<?php echo get_site_url() ?>/ministries" class="nav-link">Ministries</a>
										</li>
										<li class="nav-item">
											<a href="<?php echo get_site_url() ?>/statement-faith" class="nav-link">Statement of Faith</a>
										</li>
										<li class="nav-item">
											<a href="<?php echo get_site_url() ?>/missionaries" class="nav-link">Missionaries</a>
										</li>
										<li class="nav-item">
											<a href="<?php echo get_site_url() ?>/contact" class="nav-link">Contact</a>
										</li>
									</ul>
								</div>
							</div>
						</nav>
					</div>
				</div>
        	</div>
        </header><!-- #masthead -->

        <div id="content" class="site-content">
