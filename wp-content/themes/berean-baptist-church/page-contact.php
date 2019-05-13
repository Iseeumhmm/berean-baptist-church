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
get_header();?>

	<!-- ***********************  GET IMAGES *********************** -->
	<style>
		.banner-img-top {
			background-image: url('<?php the_field('main_banner'); ?>')
		}
		.three-block--2 {
		background-image: linear-gradient(rgba(0,0,0, .6),rgba(0,0,0, .6)),url('<?php the_field('service_sundays_img'); ?>')
		}
		.three-block--3 {
			background-image: linear-gradient(rgba(0,0,0, .6),rgba(0,0,0, .6)),url('<?php the_field('service_wednesdays_img'); ?>')
		}
	</style>
		<!-- ***********************  MAIN AREA *********************** -->
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="heading-bar heading-bar--about">
				<h1>Sermons Online</h1>
			</div>
			<div class="main_content text-center">
				<iframe width="100%" height="675" id="gmap_canvas" src="https://maps.google.com/maps?q=932%20Leathorne%20&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
				<div class="main_content-sub-container grey-background">
					<h2>Berean Baptist Church</h2>
					<div class="container-fluid">
						<div class="row d-flex justify-content-center">
							<div class="col-md-3 home_interact" title="">
								<a href="Berean/ministries"><i class="fal fa-3x fa-map-marked-alt"></i></a>
								<p>932 Leathorne Street <br>London, ON, N5Z 3M5</p>
							</div>
							<div class="col-md-3 home_interact" title="">
								<a href="Berean/27nt60"><i class="fal fa-3x fa-phone"></i></a>
								<p>519-685-5414</p>
							</div>
							<div class="col-md-3 home_interact" title="">
								<a href="Berean/sermons"><i class="fal fa-3x fa-envelope"></i></a>
								<p>pastorbruce@bereanbaptistlondon.org</p>
							</div>
						</div>
					</div>
				</div>
				<div class="container-fluid">
					<div class="row d-flex justify-content-center">
						<div class="col-auto three-block three-block--1" title="Service Times">
							<h2>Berean Baptist <br> Service Times</h2>
						</div>
						<div class="col-auto three-block three-block--2" title="Sundays">
						<h2>Sundays</h2>
						<p><?php the_field('service_times_sundays'); ?></p>
						</div>
						<div class="col-auto three-block three-block--3" title="Wednesdays">
						<h2>Wednesdays</h2>
						<p><?php the_field('service_times_wednesdays'); ?></p>
						</div>
					</div>
				</div>
			</div>
		</main><!-- #main -->
	</div><!-- #primary -->


<?php get_footer(); ?>

