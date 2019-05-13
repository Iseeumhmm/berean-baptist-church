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
			background-image: url('<?php the_field('top_banner'); ?>')
		}
		.banner-img-bottom {
			background-image: url('<?php the_field('bottom_banner'); ?>')
		}
	</style>
	 
		<!-- ***********************  MAIN AREA *********************** -->
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
		<div class="heading-bar heading-bar--about">
			<h1>About Us</h1>
		</div>
		<div class="main_content">
			<div class="banner banner-img-top" title="Main Banner"></div>
			<div class="banner banner-img-bottom" title="Main Banner"></div>
		</div>
		
	
		</main><!-- #main -->
	</div><!-- #primary -->


<?php get_footer(); ?>

