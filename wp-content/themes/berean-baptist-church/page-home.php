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
	<style>
	.banner-img-top {
		background-image: linear-gradient(rgba(0,0,0, .6),rgba(0,0,0, .6)),url('<?php the_field('main_banner'); ?>')
	}
	.banner-img-bottom {
		background-image: linear-gradient(rgba(0,0,0, .6),rgba(0,0,0, .6)),url('<?php the_field('bottom_banner'); ?>')
	}
	.three-block--2 {
		background-image: linear-gradient(rgba(0,0,0, .6),rgba(0,0,0, .6)),url('<?php the_field('service_sundays_img'); ?>')
	}
	.three-block--3 {
		background-image: linear-gradient(rgba(0,0,0, .6),rgba(0,0,0, .6)),url('<?php the_field('service_wednesdays_img'); ?>')
	}
	</style>
	<!-- ***********************  GET IMAGES *********************** -->
	 
		<!-- ***********************  MAIN AREA *********************** -->
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<!-- ******************* MAIN BANNER ******************* -->
			<div class="banner banner-img-top" title="Main Banner">
				<div class="center-div text-center">
					<h1>“Everything by faith  . . .  to please God!"</h1>
					<p>~ Hebrews 11:6</p>
					<button onclick="location.href = '/Berean';" class="btn rounded-button">LISTEN TO LATEST SERMON</button>
				</div>
			</div>
			<!-- ******************* MAIN CONTENT ******************* -->
			<div class="main_content">
				<div class="container-fluid">
					<div class="row d-flex justify-content-center">
						<div class="col-sm-12 col-md-8 col-lg-auto three-block three-block--1" title="Service Times">
							<h2>Berean Baptist <br> Service Times</h2>
						</div>
						<div class="col-sm-12 col-md-8 col-lg-auto three-block three-block--2" title="Sundays">
						<h2>Sundays</h2>
						<?php the_field('service_times_sundays'); ?>
						</div>
						<div class="col-sm-12 col-md-8 col-lg-auto three-block three-block--3" title="Wednesdays">
						<h2>Wednesdays</h2>
						<?php the_field('service_times_wednesdays'); ?>
						</div>
					</div>
				</div>
				<div class="main_content-sub-container">
					<h2>The Nobility of the Bereans</h2>
					<p>"These (the Bereans) were more noble than those in Thessalonica, in that they received the word with all readiness of mind, and searched the scriptures daily, whether those things were so.<br>(Act 17:11 - KJB)</p>
					<button onclick="location.href = '/Berean';" class="btn btn-white rounded-button">LEARN MORE ABOUT US</button>
				</div>
				<div class="main_content-sub-container grey-background">
					<h2>Interact with Us</h2>
					<div class="container-fluid">
						<div class="row d-flex justify-content-center">
							<div class="col-md-3 home_interact" title="">
								<a href="Berean/ministries"><i class="fal fa-3x fa-users"></i></a>
								<p>Church Ministries</p>
							</div>
							<div class="col-md-3 home_interact" title="">
								<a href="Berean/27nt60"><i class="fal fa-3x fa-bible"></i></a>
								<p>NT in 60 Days</p>
							</div>
							<div class="col-md-3 home_interact" title="">
								<a href="Berean/sermons"><i class="fal fa-3x fa-calendar-alt"></i></a>
								<p>Upcoming Events</p>
							</div>
						</div>
					</div>
				</div>
				<div class="heading-bar">
					<a href="Berean/statement-faith" class="statement-faith--link">Click Here to read our Statement of Faith</a>
				</div>
			</div>
			<div class="banner banner-img-bottom" title="Missionaries">
			<div class="left-div">
				<h2>We are a missions - minded local church.</h2>
				<p>We thank the LORD that He has enabled us to financially support missionaries and their families as well as pray for many more.</p>
				<button onclick="location.href = 'Berean/missionaries';" class="btn rounded-button">OUR MISSIONARIES</button>
			</div>
			</div>
		</main><!-- #main -->
	</div><!-- #primary -->


<?php get_footer(); ?>

