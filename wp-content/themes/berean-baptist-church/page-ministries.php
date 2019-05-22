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
	</style>
		<!-- ***********************  MAIN AREA *********************** -->
	<div id="primary" class="content-area">
		<main id="main" class="site-main ministries-page">
			<div class="heading-bar heading-bar--about">
				<h1>Ministries</h1>
			</div>
			<div class="main_content text-center">
				<div class="banner banner-img-top" title="Main Banner"></div>
				<div class="main_content-sub-container">
					<h1 class="pb-5">Come Join us in Growing Together</h1>
					<div class="container-fluid ministries_container_padding grey-background">
						<div class="row d-flex justify-content-center">
							<div class="col-md-6 col-lg-5 donations-methods" title="">
								<i class="fal fa-3x fa-cubes color-blue pb-5"></i>
								<h2>Sunday School</h2>
								<p><span class="color-blue">Four Bible verses</span> give us our reason to have a Sunday Bible School. And the activities that we are involved in each week.</p>
							</div>
							<div class="col-md-6 col-lg-5 donations-methods" title="">
								<i class="fal fa-3x fa-bible color-blue pb-5"></i>
								<h2>Institute</h2>
								<p>Berean Baptist Bible Institute (3BI) – Mondays  7:00 – 9:00pm – From September to June</p>
							</div>
						</div>
						<div class="container-fluid">
							<div class="row d-flex justify-content-center pt-5">
								<div class="col-md-6 col-lg-5 donations-methods" title="">
									<i class="fal fa-3x fa-user color-blue pb-5"></i>
									<h2>55+ Seniors Fellowship</h2>
									<p>Seniors Fellowship is for men and women aged 55+. They meet on the last Friday of each month at 10:30am.</p>
									<a href="" class="mailto-link"><u>Learn More</u></a>
								</div>
								<div class="col-md-6 col-lg-5 donations-methods" title="">
									<i class="fal fa-3x fa-users color-blue pb-5"></i>
									<h2>Men’s Fellowship</h2>
									<p>Men’s Fellowship is open to young men (teenagers) all the way to senior men.</p>
									<a href="" class="mailto-link"><u>Learn More</u></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<p class="secondary-margin pt-5">In all of this we encourage our people to study the Scriptures for themselves and be “good Bereans” rightly dividing the word of truth.</p>
			</div>
			
		</main><!-- #main -->
	</div><!-- #primary -->


<?php get_footer(); ?>

