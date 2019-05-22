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
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Berean Baptist Church</title>
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>
    <div id="page" class="site">
        <header id="masthead" class="site-header">
			<div class="container-fluid">
				<div class="row justify-content-around">
					<div class="col-md-12 col-lg-11 col-xl-10">
						<nav class="navbar navbar-expand-lg navbar-light">
							<div class="logo">
								<a href="/Berean/home" class="navbar-brand"><h1>Berean Baptist Church</h1></a>
								<p>London, Ontario</p>
							</div>
							<button class="navbar-toggler mr-md-7" data-toggle="collapse" data-target="#navbarMenu">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="phone">519 685 5414</div>
							<div class="collapse navbar-collapse" id="navbarMenu">
								<div class="navbar-nav ml-auto navbar-mobile-center">
									<ul class="navbar-nav ml-auto">
										<li class="nav-item">
											<a href="Berean/sermons" class="nav-link">Sermons</a>
										</li>
										<li class="nav-item">
											<a href="Berean/27nt60" class="nav-link">27NT60</a>
										</li>
										<li class="nav-item">
											<a href="Berean/donations" class="nav-link">Donations</a>
										</li>
										<li class="nav-item">
											<a href="Berean/about" class="nav-link">About</a>
										</li>
										<li class="nav-item">
											<a href="Berean/ministries" class="nav-link">Ministries</a>
										</li>
										<li class="nav-item">
											<a href="Berean/statement-faith" class="nav-link">Statement of Faith</a>
										</li>
										<li class="nav-item">
											<a href="Berean/missionaries" class="nav-link">Missionaries</a>
										</li>
										<li class="nav-item">
											<a href="Berean/contact" class="nav-link">Contact</a>
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
